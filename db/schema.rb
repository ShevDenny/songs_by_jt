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

ActiveRecord::Schema.define(version: 2021_07_23_144724) do

  create_table "reviews", force: :cascade do |t|
    t.integer "super_fan_id", null: false
    t.integer "song_id", null: false
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_reviews_on_song_id"
    t.index ["super_fan_id"], name: "index_reviews_on_super_fan_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "youtube_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "super_fans", force: :cascade do |t|
    t.string "name"
    t.integer "years_of_fandom"
    t.integer "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_super_fans_on_song_id"
  end

  add_foreign_key "reviews", "songs"
  add_foreign_key "reviews", "super_fans"
  add_foreign_key "super_fans", "songs"
end
