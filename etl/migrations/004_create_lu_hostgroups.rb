
class CreateLuHostgroups < ActiveRecord::Migration

  def change
    create_table :lu_hostgroups, primary_key: 'hostgroup_id', force: true do |t|
      t.integer :instance_id, null: false
      t.integer :hostgroup_object_id, null: false
      t.string :hostgroup_name, null: false
      t.string :hostgroup_alias
    end

    add_index :lu_hostgroups, :hostgroup_name, unique: true
  end
end
