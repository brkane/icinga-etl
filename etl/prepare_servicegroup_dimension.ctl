
source :servicegroup_in, {
  type:   :database,
  target: :source,
  table:  'icinga_servicegroups',
  join:   'icinga_objects on icinga_servicegroups.servicegroup_object_id = icinga_objects.object_id and icinga_servicegroups.instance_id = icinga_objects.instance_id',
  select: 'icinga_servicegroups.instance_id, icinga_servicegroups.servicegroup_object_id, icinga_objects.name1, icinga_servicegroups.alias',
  },
  [
    :instance_id,
    :servicegroup_object_id,
    :name1,
    :alias
  ]

transform :instance_id, :type, type: :integer
transform :servicegroup_object_id, :type, type: :integer
after_read :rename, source: :name1, dest: :servicegroup_name
after_read :rename, source: :alias, dest: :servicegroup_alias

destination :servicegroup_out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'lu_servicegroups',
  truncate:    false,
  natural_key: [ :servicegroup_name ],
  scd_fields:  [ :servicegroup_alias ],
  scd:         {
    dimension_target:    :datawarehouse,
    dimension_table:     'lu_servicegroups',
    type:                1,
    non_evolving_fields: [ :instance_id, :servicegroup_object_id ],
  },
},
{ order: [
  :instance_id,
  :servicegroup_object_id,
  :servicegroup_name,
  :servicegroup_alias,
  ]
}
