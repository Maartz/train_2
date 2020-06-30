class DeleteDescriptionFromStation < ActiveRecord::Migration[6.0]
  def change
    remove_column :stations, :description
  end
end
