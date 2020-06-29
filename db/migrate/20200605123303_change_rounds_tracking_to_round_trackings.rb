class ChangeRoundsTrackingToRoundTrackings < ActiveRecord::Migration[6.0]
  def change
    rename_table :rounds_trackings, :round_trackings
  end
end
