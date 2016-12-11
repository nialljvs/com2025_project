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

ActiveRecord::Schema.define(version: 20161211143750) do

  create_table "customers", force: :cascade do |t|
    t.string   "forename",   null: false
    t.string   "surname",    null: false
    t.string   "email",      null: false
    t.string   "phone",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.date     "start",       null: false
    t.date     "end",         null: false
    t.string   "location",    null: false
    t.float    "quote",       null: false
    t.boolean  "paid"
    t.integer  "customer_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["customer_id"], name: "index_events_on_customer_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.float    "quote",       null: false
    t.integer  "event_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tasks", ["event_id"], name: "index_tasks_on_event_id"

end
