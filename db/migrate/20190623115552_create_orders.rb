class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.float :amount
      t.string :curency

      t.timestamps
    end
  end
end
