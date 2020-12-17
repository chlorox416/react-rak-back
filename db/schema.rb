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

ActiveRecord::Schema.define(version: 2020_12_14_220642) do

  create_table "kindnesses", force: :cascade do |t|
    t.string "act"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_kindnesses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "kindness_id", null: false
    t.string "date"
    t.string "note"
    t.boolean "completion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kindness_id"], name: "index_user_kindnesses_on_kindness_id"
    t.index ["user_id"], name: "index_user_kindnesses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_kindnesses", "kindnesses"
  add_foreign_key "user_kindnesses", "users"
end
