
class CreateLuServices < ActiveRecord::Migration

  def change
    create_table :lu_services, primary_key: 'service_id', force: true do |t|
      t.integer :instance_id, null: false
      t.integer :service_object_id, null: false
      t.integer :host_id, null: false
      t.string :service_name
      t.string :service_display_name
    end

    add_index :lu_services, [:host_id, :service_name], unique: true
  end
end
