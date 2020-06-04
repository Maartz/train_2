class CreateRoundsTracking < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds_trackings do |t|
      t.references :round, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.datetime :passed_station
    end
  end
end
