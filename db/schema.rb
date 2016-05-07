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

ActiveRecord::Schema.define(version: 20160507005759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homes", force: :cascade do |t|
    t.string   "parcel"
    t.string   "recorded_date"
    t.string   "entry_num"
    t.string   "book"
    t.string   "page"
    t.string   "inst_type"
    t.string   "trustor_1"
    t.string   "mortgagor_1"
    t.string   "propad"
    t.string   "prop_city"
    t.string   "prop_state"
    t.string   "prop_zip"
    t.string   "owner"
    t.string   "mailad"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "assessed"
    t.string   "land_value"
    t.string   "building_value"
    t.string   "propuse"
    t.string   "year_built"
    t.string   "lotsqft"
    t.string   "sqft"
    t.string   "bedbath"
    t.string   "bathroom"
    t.string   "fireplace"
    t.string   "structure"
    t.string   "subdivis"
    t.string   "zestimate"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
