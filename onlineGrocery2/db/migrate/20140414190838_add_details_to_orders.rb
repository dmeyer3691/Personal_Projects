class AddDetailsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :time_received, :datetime
    add_column :orders, :time_picked_up, :datetime
    add_column :orders, :projected_pick_up_time, :datetime
  end
end
