class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :station_number
      t.string :station_name

      t.timestamps
    end
  end
end
