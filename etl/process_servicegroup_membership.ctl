require File.expand_path("../lookup_id_processor", __FILE__)
require File.expand_path("../service", __FILE__)
require File.expand_path("../servicegroup", __FILE__)

source :membership_in, {
  type:   :database,
  target: :source,
  table:  'icinga_servicegroup_members',
  select: 'icinga_servicegroup_members.servicegroup_member_id, icinga_servicegroup_members.instance_id, icinga_servicegroups.servicegroup_object_id, icinga_servicegroup_members.service_object_id',
  join:   'icinga_servicegroups on icinga_servicegroup_members.servicegroup_id = icinga_servicegroups.servicegroup_id',
  },
  [
    :servicegroup_member_id,
    :instance_id,
    :servicegroup_object_id,
    :service_object_id
  ]

transform :instance_id, :type, type: :integer
transform :servicegroup_object_id, :type, type: :integer
transform :service_object_id, :type, type: :integer
after_read :lookup_id, target: :datawarehouse, klass: Service, field: :service_id, search_fields: [ :instance_id, :service_object_id ]
after_read :lookup_id, target: :datawarehouse, klass: Servicegroup, field: :servicegroup_id, search_fields: [ :instance_id, :servicegroup_object_id ]

destination :membership_out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'rel_servicegroup_members',
  truncate:    true
},
{ order: [
  :servicegroup_id,
  :service_id
  ]
}

