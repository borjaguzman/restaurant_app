# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_12_161515) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes_restaurants", id: false, force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "dish_id", null: false
    t.index ["dish_id", "restaurant_id"], name: "index_dishes_restaurants_on_dish_id_and_restaurant_id"
    t.index ["restaurant_id", "dish_id"], name: "index_dishes_restaurants_on_restaurant_id_and_dish_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "callories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dish_id", null: false
    t.index ["dish_id"], name: "index_items_on_dish_id"
  end

  create_table "items_restaurants", id: false, force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "item_id", null: false
    t.index ["item_id", "restaurant_id"], name: "index_items_restaurants_on_item_id_and_restaurant_id"
    t.index ["restaurant_id", "item_id"], name: "index_items_restaurants_on_restaurant_id_and_item_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "dishes"
end
