require File.expand_path("../host", __FILE__)
require File.expand_path("../lookup_id_processor", __FILE__)

source :service_in, {
  type:   :database,
  target: :source,
  table:  'icinga_services',
  join:   'icinga_objects on icinga_services.service_object_id = icinga_objects.object_id and icinga_services.instance_id = icinga_objects.instance_id',
  select: 'icinga_services.instance_id, icinga_services.service_object_id, icinga_objects.name1, icinga_objects.name2, icinga_services.display_name',
  },
  [
    :instance_id,
    :service_object_id,
    :name1,
    :name2,
    :display_name,
  ]

transform :instance_id, :type, type: :integer
transform :service_object_id, :type, type: :integer
after_read :rename, source: :name1, dest: :host_name
after_read :rename, source: :name2, dest: :service_name
after_read :rename, source: :display_name, dest: :service_display_name
after_read :lookup_id, target: :datawarehouse, klass: Host, field: :host_id, search_fields: [ :instance_id, :host_name ]

destination :out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'lu_services',
  truncate:    false,
  natural_key: [ :host_id, :service_name ],
  scd_fields:  [ :service_display_name ],
  scd:         {
    dimension_target:    :datawarehouse,
    dimension_table:     'lu_services',
    type:                1,
    non_evolving_fields: [ :instance_id, :service_object_id ],
  },
},
{ order: [
  :instance_id,
  :service_object_id,
  :host_id,
  :service_name,
  :service_display_name,
  ]
}

