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

ActiveRecord::Schema.define(version: 20150104103414) do

  create_table "course_groups", force: true do |t|
    t.integer  "course_id"
    t.integer  "group_id"
    t.string   "coursename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_groups", ["course_id"], name: "index_course_groups_on_course_id"
  add_index "course_groups", ["group_id"], name: "index_course_groups_on_group_id"

  create_table "courses", force: true do |t|
    t.integer  "discipline_id"
    t.integer  "teacher_id"
    t.string   "coursename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["discipline_id"], name: "index_courses_on_discipline_id"
  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id"

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "duties", force: true do |t|
    t.integer  "Discipline_id"
    t.integer  "Teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "duties", ["Discipline_id"], name: "index_duties_on_Discipline_id"
  add_index "duties", ["Teacher_id"], name: "index_duties_on_Teacher_id"

  create_table "student_group_memberships", force: true do |t|
    t.integer  "student_id"
    t.integer  "student_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_groups", force: true do |t|
    t.string   "groupname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_groups", ["groupname"], name: "index_student_groups_on_groupname", unique: true

  create_table "users", force: true do |t|
    t.string   "login",                  default: "", null: false
    t.string   "firstname",              default: "", null: false
    t.string   "middlename",             default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.integer  "accesslevel",            default: 0,  null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
