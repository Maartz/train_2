class AddUniquenessConstraintToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_index :schedules, :schedule, unique: true, name: "uniq_schedule_time"
  end
end
