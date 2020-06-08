class AddTgiToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tgi, :string
    add_index :users, :tgi, unique: true
  end
end
