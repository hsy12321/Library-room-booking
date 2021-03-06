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

ActiveRecord::Schema.define(version: 20160929185603) do

  create_table "histories", force: :cascade do |t|
    t.integer  "use_id"
    t.string   "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_email"
    t.string   "startTime"
    t.string   "endTime"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_id"
    t.string   "size"
    t.boolean  "status",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "building"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.boolean  "pre_admin",       default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
