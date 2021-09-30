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

ActiveRecord::Schema.define(version: 2021_09_30_034706) do

  create_table "query_filters", force: :cascade do |t|
    t.integer "saved_query_id"
    t.string "label"
    t.boolean "negate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["saved_query_id"], name: "index_query_filters_on_saved_query_id"
  end

  create_table "saved_queries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solar_system_objects", force: :cascade do |t|
    t.string "body"
    t.decimal "mean_radius", precision: 6
    t.decimal "mean_radius_rel", precision: 6
    t.decimal "volume", precision: 6
    t.decimal "volume_rel", precision: 6
    t.decimal "mass", precision: 6
    t.decimal "mass_rel", precision: 6
    t.decimal "density", precision: 6
    t.decimal "surface_gravity", precision: 6
    t.decimal "surface_gravity_rel", precision: 6
    t.string "type_of_object"
    t.string "shape"
  end

end
