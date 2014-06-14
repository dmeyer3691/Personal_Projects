class AddBoolToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :picked_up, :boolean
  end
end
