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

ActiveRecord::Schema.define(version: 20151016032510) do

  create_table "appointments", force: :cascade do |t|
    t.date     "Date_of_visit"
    t.string   "Pet_name"
    t.string   "Customer_name"
    t.string   "Requires_reminder"
    t.text     "reason_for_visit"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "Pet_name"
    t.date     "Date_of_next_appointment"
    t.text     "reason_of_visit"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "Name"
    t.text     "Address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "School_graduated_from"
    t.integer  "Years_of_practice"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "Name_of_pet"
    t.string   "Type_of_pet"
    t.string   "Breed"
    t.integer  "Age"
    t.float    "Weight"
    t.date     "Date_of_last_visit"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
