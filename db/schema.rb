# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140613055622) do

  create_table "airplanes", force: true do |t|
    t.string   "model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.decimal  "rate",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "class_types", force: true do |t|
    t.string   "name"
    t.decimal  "rate",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "departure_city_id"
    t.integer  "arrival_city_id"
    t.integer  "airplane_id"
    t.time     "departure_time"
    t.time     "arrival_time"
    t.decimal  "price",             precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["departure_city_id", "arrival_city_id", "airplane_id", "departure_time", "arrival_time"], name: "schedules_unique", unique: true, using: :btree

  create_table "schedules_tickets", force: true do |t|
    t.integer "ticket_id"
    t.integer "schedule_id"
  end

  create_table "tickets", force: true do |t|
    t.integer  "category_id"
    t.integer  "class_type_id"
    t.date     "departure_date"
    t.date     "return_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
