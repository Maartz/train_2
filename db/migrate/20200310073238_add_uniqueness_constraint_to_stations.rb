class AddUniquenessConstraintToStations < ActiveRecord::Migration[6.0]
  def change
    add_index :stations, :station_number, unique: true, name: "uniq_station_name"
  end
end
