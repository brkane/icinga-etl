
class CreateRelHostgroupMembers < ActiveRecord::Migration

  def change
    create_table :rel_hostgroup_members, id: false do |t|
      t.integer :hostgroup_id, null: false
      t.integer :host_id, null: false
    end

    add_index :rel_hostgroup_members, :hostgroup_id
    add_index :rel_hostgroup_members, :host_id
  end
end
