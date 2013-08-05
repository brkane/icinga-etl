
class CreateLuServiceState < ActiveRecord::Migration

  def self.up
    create_table :lu_service_state, primary_key: 'service_state_id', force: true do |t|
      t.string :state_name, null: false
    end

    ServiceState.create state_name: 'OK'
    ServiceState.create state_name: 'WARNING'
    ServiceState.create state_name: 'CRITICAL'
    ServiceState.create state_name: 'UNKNOWN'
  end

  def self.down
    drop_table :lu_service_state
  end
end
