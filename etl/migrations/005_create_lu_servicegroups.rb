
class CreateLuServicegroups < ActiveRecord::Migration

  def change
    create_table :lu_servicegroups, primary_key: 'servicegroup_id', force: true do |t|
      t.integer :instance_id, null: false
      t.integer :servicegroup_object_id, null: false
      t.string :servicegroup_name, null: false
      t.string :servicegroup_alias
    end

    add_index :lu_servicegroups, :servicegroup_name, unique: true
  end
end
