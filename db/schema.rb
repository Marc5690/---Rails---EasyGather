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

ActiveRecord::Schema.define(version: 20151111135017) do

  create_table "gatherings", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.integer  "gather_level"
    t.integer  "x_coords"
    t.integer  "y_coords"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "password"
    t.string   "profile_image"
    t.string   "profile_text"
    t.integer  "gather_points"
    t.boolean  "privacy"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
