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

ActiveRecord::Schema.define(version: 20150301230828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "descriptors", force: :cascade do |t|
    t.string   "description"
    t.integer  "parent_descriptor_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "descriptors", ["parent_descriptor_id"], name: "index_descriptors_on_parent_descriptor_id", using: :btree

  create_table "post_descriptors", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "descriptor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "post_descriptors", ["descriptor_id"], name: "index_post_descriptors_on_descriptor_id", using: :btree
  add_index "post_descriptors", ["post_id"], name: "index_post_descriptors_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "post_descriptors", "descriptors"
  add_foreign_key "post_descriptors", "posts"
  add_foreign_key "posts", "users"
end
