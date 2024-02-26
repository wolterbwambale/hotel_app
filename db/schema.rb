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

ActiveRecord::Schema[7.1].define(version: 2024_02_25_205010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "room_masters", force: :cascade do |t|
    t.integer "room_no"
    t.time "maximum_clean_time"
    t.string "block"
    t.integer "floor"
    t.integer "key_code"
    t.string "occupancy"
    t.bigint "roomtype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "bed"
    t.index ["roomtype_id"], name: "index_room_masters_on_roomtype_id"
  end

  create_table "roomtypes", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "max_guest"
    t.integer "minium_advance"
    t.integer "cancel_charges"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "room_masters", "roomtypes"
end
