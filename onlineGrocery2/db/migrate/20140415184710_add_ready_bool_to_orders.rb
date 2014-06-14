class AddReadyBoolToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ready, :boolean
  end
end
