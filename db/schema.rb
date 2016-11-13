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

ActiveRecord::Schema.define(version: 20161111162441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "sneakers_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["sneakers_id"], name: "index_orders_on_sneakers_id", using: :btree
    t.index ["users_id"], name: "index_orders_on_users_id", using: :btree
  end

  create_table "sneakers", force: :cascade do |t|
    t.string   "name"
    t.string   "img_url"
    t.string   "shoesize"
    t.string   "price"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_sneakers_on_brand_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "sneakers", column: "sneakers_id"
  add_foreign_key "orders", "users", column: "users_id"
  add_foreign_key "sneakers", "brands"
end
