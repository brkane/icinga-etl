
source :hostgroup_in, {
  type:   :database,
  target: :source,
  table:  'icinga_hostgroups',
  join:   'icinga_objects on icinga_hostgroups.hostgroup_object_id = icinga_objects.object_id and icinga_hostgroups.instance_id = icinga_objects.instance_id',
  select: 'icinga_hostgroups.instance_id, icinga_hostgroups.hostgroup_object_id, icinga_objects.name1, icinga_hostgroups.alias',
  },
  [
    :instance_id,
    :hostgroup_object_id,
    :name1,
    :alias
  ]

transform :instance_id, :type, type: :integer
transform :hostgroup_object_id, :type, type: :integer
after_read :rename, source: :name1, dest: :hostgroup_name
after_read :rename, source: :alias, dest: :hostgroup_alias

destination :hostgroup_out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'lu_hostgroups',
  truncate:    false,
  natural_key: [ :hostgroup_name ],
  scd_fields:  [ :hostgroup_alias ],
  scd:         {
    dimension_target:    :datawarehouse,
    dimension_table:     'lu_hostgroups',
    type:                1,
    non_evolving_fields: [ :instance_id, :hostgroup_object_id ],
  },
},
{ order: [
  :instance_id,
  :hostgroup_object_id,
  :hostgroup_name,
  :hostgroup_alias,
  ]
}
