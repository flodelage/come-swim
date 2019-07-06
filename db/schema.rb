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

ActiveRecord::Schema.define(version: 2019_07_04_101202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.string "state"
    t.bigint "user_id"
    t.bigint "swimming_pool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "participant"
    t.index ["swimming_pool_id"], name: "index_bookings_on_swimming_pool_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "swimming_pools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.integer "length"
    t.integer "width"
    t.boolean "heated"
    t.string "type"
    t.integer "capacity"
    t.boolean "availability", default: true
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_swimming_pools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "swimming_pools"
  add_foreign_key "bookings", "users"
end
