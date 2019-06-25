# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_25_133736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "currency"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "customer_first_name"
    t.string "customer_last_name"
    t.string "customer_email"
    t.string "customer_phone"
    t.string "work_phone"
    t.string "billing_address_city"
    t.string "billing_address_address_1"
    t.string "billing_address_address_2"
    t.string "billing_address_address_3"
    t.string "billing_address_state"
    t.string "billing_address_country"
    t.string "billing_address_zip"
    t.string "shipping_address_city"
    t.string "shipping_address_address_1"
    t.string "shipping_address_address_2"
    t.string "shipping_address_address_3"
    t.string "shipping_address_state"
    t.string "shipping_address_country"
    t.string "shipping_address_zip"
    t.boolean "address_match"
    t.boolean "require_shipping", default: true
  end

end
