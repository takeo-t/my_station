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

ActiveRecord::Schema[7.0].define(version: 2023_10_05_095038) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "change_stations", id: :serial, force: :cascade do |t|
    t.string "change_station"
    t.string "change_station_kana"
    t.string "change_on_train"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "change_train"
  end

  create_table "favorite_stations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "station2_id"
    t.index ["user_id"], name: "index_favorite_stations_on_user_id"
  end

  create_table "station2s", id: :integer, default: nil, force: :cascade do |t|
    t.string "line_name"
    t.string "station_num"
    t.string "station_name"
    t.string "station_name_kana"
    t.integer "track_num"
    t.string "position"
    t.boolean "rpd_ltd_exp"
    t.boolean "limited_exp"
    t.boolean "rpd_exp"
    t.boolean "exp"
    t.boolean "semi_exp"
    t.string "position_color"
    t.string "color"
    t.boolean "change_station"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "sign_in_count"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "favorite_stations", "users"
end
