require File.expand_path("../lookup_id_processor", __FILE__)
require File.expand_path("../host", __FILE__)
require File.expand_path("../hostgroup", __FILE__)

source :membership_in, {
  type:   :database,
  target: :source,
  table:  'icinga_hostgroup_members',
  select: 'icinga_hostgroup_members.hostgroup_member_id, icinga_hostgroup_members.instance_id, icinga_hostgroups.hostgroup_object_id, icinga_hostgroup_members.host_object_id',
  join:   'icinga_hostgroups on icinga_hostgroup_members.hostgroup_id = icinga_hostgroups.hostgroup_id',
  },
  [
    :hostgroup_member_id,
    :instance_id,
    :hostgroup_object_id,
    :host_object_id
  ]

transform :instance_id, :type, type: :integer
transform :hostgroup_object_id, :type, type: :integer
transform :host_object_id, :type, type: :integer
after_read :lookup_id, target: :datawarehouse, klass: Host, field: :host_id, search_fields: [ :instance_id, :host_object_id ]
after_read :lookup_id, target: :datawarehouse, klass: Hostgroup, field: :hostgroup_id, search_fields: [ :instance_id, :hostgroup_object_id ]

destination :membership_out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'rel_hostgroup_members',
  truncate:    true
},
{ order: [
  :hostgroup_id,
  :host_id
  ]
}

