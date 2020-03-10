class CreateRoundsSchedule < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds_schedules do |t|
      t.integer :schedule_id
      t.integer :round_id
    end
  end
end
