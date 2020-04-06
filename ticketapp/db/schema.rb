# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_06_065807) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_informations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "StartDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_venues_id"
    t.index ["event_venues_id"], name: "index_event_informations_on_event_venues_id"
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.decimal "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customers_id"
    t.integer "tickets_id"
    t.index ["customers_id"], name: "index_ticket_orders_on_customers_id"
    t.index ["tickets_id"], name: "index_ticket_orders_on_tickets_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_orders_id"
    t.integer "event_informations_id"
    t.string "Quality"
    t.index ["event_informations_id"], name: "index_tickets_on_event_informations_id"
    t.index ["ticket_orders_id"], name: "index_tickets_on_ticket_orders_id"
  end

  add_foreign_key "event_informations", "event_venues", column: "event_venues_id"
  add_foreign_key "ticket_orders", "customers", column: "customers_id"
  add_foreign_key "ticket_orders", "tickets", column: "tickets_id"
  add_foreign_key "tickets", "event_informations", column: "event_informations_id"
  add_foreign_key "tickets", "ticket_orders", column: "ticket_orders_id"
end
