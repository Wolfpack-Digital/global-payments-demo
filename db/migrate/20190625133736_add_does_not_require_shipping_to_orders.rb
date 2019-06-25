class AddDoesNotRequireShippingToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :require_shipping, :boolean, default: true
  end
end
