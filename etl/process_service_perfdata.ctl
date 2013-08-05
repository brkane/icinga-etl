require File.expand_path("../perfdata_processor", __FILE__)
require File.expand_path("../lookup_id_processor", __FILE__)
require File.expand_path("../service_state_transform", __FILE__)
require File.expand_path("../state_type_transform", __FILE__)
require File.expand_path("../service", __FILE__)

source :perfdata_in, {
  type:   :database,
  target: :source,
  table:  'icinga_servicechecks',
  select: 'icinga_servicechecks.servicecheck_id, icinga_servicechecks.instance_id, icinga_servicechecks.service_object_id, icinga_servicechecks.start_time, icinga_servicechecks.end_time, icinga_servicechecks.perfdata, icinga_servicechecks.state, icinga_servicechecks.state_type',
  new_records_only: :start_time
  },
  [
    :servicecheck_id,
    :instance_id,
    :service_object_id,
    :start_time,
    :end_time,
    :perfdata,
    :state,
    :state_type
  ]

transform :instance_id, :type, type: :integer
transform :service_object_id, :type, type: :integer
transform :state, :service_state
transform :state_type, :state_type
after_read :rename, source: :state, dest: :state_id
after_read :rename, source: :state_type, dest: :state_type_id
after_read :lookup_id, target: :datawarehouse, klass: Service, field: :service_id, search_fields: [ :instance_id, :service_object_id ]

before_write :perfdata

destination :perfdata_out, { file: 'prepared_perfdata.txt' }, { order: [:service_id, :start_time, :perf_data_name, :perf_data_value, :perf_data_unit] }
post_process :bulk_import, {
  file:    'prepared_perfdata.txt',
  columns: [:service_id, :start_time, :perf_data_name, :perf_data_value, :perf_data_unit],
  target:  :datawarehouse,
  table:   'service_obj_data'
  }

destination :execdata_out, { file: 'prepared_execdata.txt' }, { order: [:service_id, :start_time, :end_time, :state_id, :state_type_id] }
post_process :bulk_import, {
  file:    'prepared_execdata.txt',
  columns: [:service_id, :start_time, :end_time, :state_id, :state_type_id],
  target:  :datawarehouse,
  table:   'service_obj_exec'
  }

