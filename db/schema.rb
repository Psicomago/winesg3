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

ActiveRecord::Schema.define(version: 2022_09_05_165446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oenologists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strain_wines", force: :cascade do |t|
    t.bigint "strain_id"
    t.bigint "wine_id"
    t.integer "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_strain_wines_on_strain_id"
    t.index ["wine_id"], name: "index_strain_wines_on_wine_id"
  end

  create_table "strains", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_oenologists", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "oenologist_id"
    t.float "nota"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oenologist_id"], name: "index_wine_oenologists_on_oenologist_id"
    t.index ["wine_id"], name: "index_wine_oenologists_on_wine_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "strain_wines", "strains"
  add_foreign_key "strain_wines", "wines"
  add_foreign_key "wine_oenologists", "oenologists"
  add_foreign_key "wine_oenologists", "wines"
end
