

ActiveRecord::Schema[7.1].define(version: 2024_03_18_144519) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_instructions", force: :cascade do |t|
    t.string "code"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkout_times", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_executives", force: :cascade do |t|
    t.string "market_executive_code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mealplans", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.date "effective_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nationalities", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["region_id"], name: "index_nationalities_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "nationality_id"
    t.index ["nationality_id"], name: "index_regions_on_nationality_id"
  end

  create_table "room_features", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.bigint "room_feature_id", null: false
    t.index ["room_feature_id"], name: "index_room_masters_on_room_feature_id"
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

  add_foreign_key "nationalities", "regions"
  add_foreign_key "regions", "nationalities"
  add_foreign_key "room_masters", "room_features"
  add_foreign_key "room_masters", "roomtypes"
end
