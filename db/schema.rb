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

ActiveRecord::Schema.define(version: 20180227202354) do

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "location_id"
    t.integer "category_id"
    t.integer "food_type_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "restaurant_img_file_name"
    t.string "restaurant_img_content_type"
    t.integer "restaurant_img_file_size"
    t.datetime "restaurant_img_updated_at"
  end

end
