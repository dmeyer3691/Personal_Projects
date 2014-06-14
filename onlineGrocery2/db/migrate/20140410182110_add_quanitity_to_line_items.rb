class AddQuanitityToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :quanitity, :integer, default: 1
  end
end
