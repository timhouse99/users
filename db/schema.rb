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

ActiveRecord::Schema.define(version: 20181204215629) do

  create_table "groups", force: :cascade do |t|
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.string "suffix"
    t.integer "department_id"
    t.string "role"
    t.string "phone_number"
    t.string "eamil_address"
    t.string "UserAccounts"
    t.string "user_id"
    t.string "gecos"
    t.string "home_dir"
    t.string "password"
    t.string "access_granted_date"
    t.string "access_suspended_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accounts", force: :cascade do |t|
    t.string "user_id"
    t.string "gecos"
    t.string "home_dir"
    t.string "password"
    t.string "access_granted_date"
    t.string "access_suspended_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
