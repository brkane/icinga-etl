
class CreateLuStateType < ActiveRecord::Migration

  def self.up
    create_table :lu_state_type, primary_key: 'state_type_id', force: true do |t|
      t.string :type_name, null: false
    end

    StateType.create type_name: 'SOFT'
    StateType.create type_name: 'HARD'
  end

  def self.down
    drop_table :lu_state_type
  end
end
