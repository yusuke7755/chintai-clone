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

ActiveRecord::Schema.define(version: 2021_06_16_061449) do

  create_table "chintais", force: :cascade do |t|
    t.text "rentname"
    t.integer "wage"
    t.text "address"
    t.integer "age"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routeinfos", force: :cascade do |t|
    t.text "railroad"
    t.text "station"
    t.integer "foot"
    t.integer "chintai_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chintai_id"], name: "index_routeinfos_on_chintai_id"
  end

end
