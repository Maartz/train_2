class CreateRoundsStation < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds_stations do |t|
      t.integer :station_id
      t.integer :round_id
    end
  end
end
