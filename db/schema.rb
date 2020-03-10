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

ActiveRecord::Schema.define(version: 2020_03_10_094033) do

  create_table "rounds", force: :cascade do |t|
    t.string "round_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rounds_schedules", force: :cascade do |t|
    t.integer "schedule_id"
    t.integer "round_id"
  end

  create_table "rounds_stations", force: :cascade do |t|
    t.integer "station_id"
    t.integer "round_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.time "schedule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["schedule"], name: "uniq_schedule_time", unique: true
  end

  create_table "stations", force: :cascade do |t|
    t.string "station_number"
    t.string "station_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.index ["station_number"], name: "uniq_station_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "tgi", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tgi"], name: "index_users_on_tgi", unique: true
  end

end
