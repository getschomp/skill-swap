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

ActiveRecord::Schema.define(version: 20150112025308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "user_id_1", null: false
    t.integer "user_id_2", null: false
  end

  add_index "conversations", ["user_id_1", "user_id_2"], name: "index_conversations_on_user_id_1_and_user_id_2", unique: true, using: :btree

  create_table "have_skills", force: :cascade do |t|
    t.integer  "skill_id",        null: false
    t.integer  "user_id",         null: false
    t.string   "expertise_level"
    t.string   "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string "state", null: false
    t.string "city",  null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content",         null: false
    t.integer  "user_id",         null: false
    t.integer  "conversation_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "category",    null: false
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",                            null: false
    t.string   "gender"
    t.text     "about_me"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "want_skills", force: :cascade do |t|
    t.integer  "skill_id",        null: false
    t.integer  "user_id",         null: false
    t.string   "current_level"
    t.string   "desired_level"
    t.string   "why_description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
