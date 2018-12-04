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

ActiveRecord::Schema.define(version: 2018_12_04_183216) do

  create_table "owner_plants", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_owner_plants_on_owner_id"
    t.index ["plant_id"], name: "index_owner_plants_on_plant_id"
  end

  create_table "owner_sitters", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_owner_sitters_on_owner_id"
    t.index ["sitter_id"], name: "index_owner_sitters_on_sitter_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "zipcode"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "username"
  end

  create_table "plants", force: :cascade do |t|
    t.string "species"
    t.string "image"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "name"
    t.string "zipcode"
    t.string "phone"
    t.string "email"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
