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

ActiveRecord::Schema.define(version: 2020_10_17_211921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.bigint "user_id", null: false
    t.bigint "outfit_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_appointments_on_character_id"
    t.index ["outfit_id"], name: "index_appointments_on_outfit_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "occupation"
    t.integer "lovePoint"
    t.boolean "favorite"
    t.string "bio"
    t.string "imageURL"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.string "outfitname"
    t.string "headwear"
    t.string "topwear"
    t.string "bottomwear"
    t.string "shoe"
    t.string "accessories"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_outfits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "bio"
    t.integer "looks"
    t.integer "smarts"
    t.integer "athletic"
    t.integer "finance"
    t.integer "kindness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "characters"
  add_foreign_key "appointments", "outfits"
  add_foreign_key "appointments", "users"
  add_foreign_key "outfits", "users"
end
