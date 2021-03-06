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

ActiveRecord::Schema.define(version: 2022_03_15_024038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "style_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_vinyls", force: :cascade do |t|
    t.bigint "vinyl_id", null: false
    t.bigint "category_id", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "offeredvinyl_id"
    t.integer "receivervinyl_id"
    t.integer "offer_state"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "rol", default: 0
    t.string "collectionist_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rol", default: 0
    t.string "collectionist_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vinyls", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.date "release_date"
    t.string "format_info"
    t.integer "status", default: 0
    t.bigint "user_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vinyls_on_user_id"
  end

  add_foreign_key "vinyls", "users"
end
