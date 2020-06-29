class AddLogisticToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :logistic, :boolean, default: false
  end
end
