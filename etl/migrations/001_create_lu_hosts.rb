
class CreateLuHosts < ActiveRecord::Migration

  def change
    create_table :lu_hosts, primary_key: 'host_id', force: true do |t|
      t.integer :instance_id, null: false
      t.integer :host_object_id, null: false
      t.string :host_name, null: false
      t.string :host_alias
      t.string :host_display_name
      t.string :host_address
    end

    add_index :lu_hosts, :host_name, unique: true
  end
end
