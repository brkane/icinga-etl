
source :host_in, {
  type:   :database,
  target: :source,
  table:  'icinga_hosts',
  join:   'icinga_objects on icinga_hosts.host_object_id = icinga_objects.object_id and icinga_hosts.instance_id = icinga_objects.instance_id',
  select: 'icinga_hosts.instance_id, icinga_hosts.host_object_id, icinga_objects.name1, icinga_hosts.alias, icinga_hosts.display_name, icinga_hosts.address',
  },
  [
    :instance_id,
    :host_object_id,
    :name1,
    :alias,
    :display_name,
    :address
  ]

transform :instance_id, :type, type: :integer
transform :host_object_id, :type, type: :integer
after_read :rename, source: :name1, dest: :host_name
after_read :rename, source: :alias, dest: :host_alias
after_read :rename, source: :display_name, dest: :host_display_name
after_read :rename, source: :address, dest: :host_address

destination :host_out, {
  type:        :database,
  target:      :datawarehouse,
  table:       'lu_hosts',
  truncate:    false,
  natural_key: [ :host_name ],
  scd_fields:  [ :host_alias, :host_display_name, :host_address ],
  scd:         {
    dimension_target:    :datawarehouse,
    dimension_table:     'lu_hosts',
    type:                1,
    non_evolving_fields: [ :instance_id, :host_object_id ],
  },
},
{ order: [
  :instance_id,
  :host_object_id,
  :host_name,
  :host_alias,
  :host_display_name,
  :host_address
  ]
}

