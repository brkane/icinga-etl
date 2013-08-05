
class CreateServiceObjExec < ActiveRecord::Migration

  def change
    create_table :service_obj_exec, id: false do |t|
      t.integer :service_id, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.integer :state_id
      t.integer :state_type_id
    end

    add_index :service_obj_exec, :service_id
    add_index :service_obj_exec, :start_time
  end
end
