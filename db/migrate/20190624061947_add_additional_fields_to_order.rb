class AddAdditionalFieldsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer_first_name, :string
    add_column :orders, :customer_last_name, :string
    add_column :orders, :customer_email, :string
    add_column :orders, :customer_phone, :string
    add_column :orders, :work_phone, :string

    add_column :orders, :billing_address_city, :string
    add_column :orders, :billing_address_address_1, :string
    add_column :orders, :billing_address_address_2, :string
    add_column :orders, :billing_address_address_3, :string
    add_column :orders, :billing_address_state, :string
    add_column :orders, :billing_address_country, :string
    add_column :orders, :billing_address_zip, :string

    add_column :orders, :shipping_address_city, :string
    add_column :orders, :shipping_address_address_1, :string
    add_column :orders, :shipping_address_address_2, :string
    add_column :orders, :shipping_address_address_3, :string
    add_column :orders, :shipping_address_state, :string
    add_column :orders, :shipping_address_country, :string
    add_column :orders, :shipping_address_zip, :string

    add_column :orders, :address_match, :boolean
  end
end
