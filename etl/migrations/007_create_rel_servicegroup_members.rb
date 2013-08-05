
class CreateRelServicegroupMembers < ActiveRecord::Migration

  def change
    create_table :rel_servicegroup_members, id: false do |t|
      t.integer :servicegroup_id, null: false
      t.integer :service_id, null: false
    end

    add_index :rel_servicegroup_members, :servicegroup_id
    add_index :rel_servicegroup_members, :service_id
  end
end
