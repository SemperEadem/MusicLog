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

ActiveRecord::Schema.define(version: 20150716142039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_assignments", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "exercise_category_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "exercise_assignments", ["exercise_category_id"], name: "index_exercise_assignments_on_exercise_category_id", using: :btree
  add_index "exercise_assignments", ["exercise_id"], name: "index_exercise_assignments_on_exercise_id", using: :btree

  create_table "exercise_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "path_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "exercise_categories", ["path_id"], name: "index_exercise_categories_on_path_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.integer  "path_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "uses_scales"
    t.string   "slug"
    t.text     "short_description"
  end

  add_index "exercises", ["description"], name: "index_exercises_on_description", using: :btree
  add_index "exercises", ["name"], name: "index_exercises_on_name", using: :btree
  add_index "exercises", ["path_id"], name: "index_exercises_on_path_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "paths", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
  end

  add_index "paths", ["slug"], name: "index_paths_on_slug", unique: true, using: :btree

  create_table "practice_sessions", force: :cascade do |t|
    t.integer  "path_id"
    t.integer  "user_id"
    t.integer  "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "practice_sessions", ["path_id"], name: "index_practice_sessions_on_path_id", using: :btree
  add_index "practice_sessions", ["user_id"], name: "index_practice_sessions_on_user_id", using: :btree

  create_table "scales", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_exercises", force: :cascade do |t|
    t.integer  "practice_session_id"
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "start_speed"
    t.integer  "end_speed"
    t.integer  "duration"
    t.integer  "tension_level"
    t.text     "notes"
    t.integer  "scale_id"
  end

  add_index "user_exercises", ["exercise_id"], name: "index_user_exercises_on_exercise_id", using: :btree
  add_index "user_exercises", ["practice_session_id"], name: "index_user_exercises_on_practice_session_id", using: :btree
  add_index "user_exercises", ["scale_id"], name: "index_user_exercises_on_scale_id", using: :btree
  add_index "user_exercises", ["user_id"], name: "index_user_exercises_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "exercise_assignments", "exercise_categories"
  add_foreign_key "exercise_assignments", "exercises"
  add_foreign_key "exercise_categories", "paths"
  add_foreign_key "exercises", "paths"
  add_foreign_key "practice_sessions", "paths"
  add_foreign_key "practice_sessions", "users"
  add_foreign_key "user_exercises", "exercises"
  add_foreign_key "user_exercises", "practice_sessions"
  add_foreign_key "user_exercises", "scales"
  add_foreign_key "user_exercises", "users"
end
