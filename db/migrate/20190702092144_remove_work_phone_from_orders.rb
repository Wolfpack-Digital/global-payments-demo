class RemoveWorkPhoneFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :work_phone
  end
end
