
class CreateServiceObjData < ActiveRecord::Migration

  def change
    create_table :service_obj_data, id: false do |t|
      t.integer :service_id, null: false
      t.datetime :start_time, null: false
      t.string :perf_data_name
      t.float :perf_data_value
      t.string :perf_data_unit
    end

    add_index :service_obj_data, :service_id
    add_index :service_obj_data, :start_time
  end
end
