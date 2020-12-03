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

ActiveRecord::Schema.define(version: 2020_12_02_212209) do

  create_table "character_sheet_feature_joiners", force: :cascade do |t|
    t.integer "character_sheets_id"
    t.integer "features_id"
  end

  create_table "character_sheets", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.integer "feature_id"
    t.integer "player_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "class_name"
    t.string "ability"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
  end

end
