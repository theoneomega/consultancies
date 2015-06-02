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

ActiveRecord::Schema.define(version: 20150529061249) do

  create_table "administrators", force: :cascade do |t|
    t.boolean  "role",                   limit: 1
    t.string   "username",               limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree

  create_table "assignatures", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "place",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "assignature_id", limit: 4
    t.string   "comments",       limit: 255
    t.integer  "location_id",    limit: 4
    t.integer  "schedule_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "meetings", ["assignature_id"], name: "index_meetings_on_assignature_id", using: :btree
  add_index "meetings", ["location_id"], name: "index_meetings_on_location_id", using: :btree
  add_index "meetings", ["schedule_id"], name: "index_meetings_on_schedule_id", using: :btree

  create_table "schedule_students", id: false, force: :cascade do |t|
    t.integer  "schedule_id", limit: 4, default: 0, null: false
    t.integer  "student_id",  limit: 4, default: 0, null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "schedule_students", ["schedule_id"], name: "index_schedule_students_on_schedule_id", using: :btree
  add_index "schedule_students", ["student_id"], name: "index_schedule_students_on_student_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.date     "meeting"
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "schedules", ["teacher_id"], name: "index_schedules_on_teacher_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "last_name2", limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "last_name2", limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "meetings", "assignatures"
  add_foreign_key "meetings", "locations"
  add_foreign_key "meetings", "schedules"
  add_foreign_key "schedule_students", "schedules"
  add_foreign_key "schedule_students", "students"
  add_foreign_key "schedules", "teachers"
end
