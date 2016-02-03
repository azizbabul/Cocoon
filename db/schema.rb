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

ActiveRecord::Schema.define(version: 20160202210253) do

  create_table "notices", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "general"
    t.string   "dept",       limit: 255
    t.string   "year",       limit: 255
    t.string   "semister",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "mtype",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "notice_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "subjects", ["notice_id"], name: "index_subjects_on_notice_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "project_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree

  add_foreign_key "subjects", "notices"
  add_foreign_key "tasks", "projects"
end
