class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.float :price
      t.string :currency
      t.integer :status, default: 0, nil: false

      t.timestamps
    end
  end
end
