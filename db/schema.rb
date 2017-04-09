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

ActiveRecord::Schema.define(version: 20170320025002) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "email",      limit: 255, null: false
    t.string   "phone",      limit: 255, null: false
    t.string   "business",   limit: 255
    t.string   "position",   limit: 255
    t.string   "message",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "possible_members", force: :cascade do |t|
    t.string   "first_name",                  limit: 255
    t.string   "first_surname",               limit: 255
    t.string   "last_surname",                limit: 255
    t.string   "email",                       limit: 255
    t.string   "member_type",                 limit: 255
    t.string   "document_type",               limit: 255
    t.string   "document_number",             limit: 255
    t.string   "consultancy_area",            limit: 255,   default: "---\n- ''\n"
    t.string   "information_technology_area", limit: 255,   default: "---\n- ''\n"
    t.string   "outsourcing_area",            limit: 255,   default: "---\n- ''\n"
    t.string   "administration_area",         limit: 255,   default: "---\n- ''\n"
    t.string   "technical_skills",            limit: 255,   default: "---\n- ''\n"
    t.string   "functional_skills",           limit: 255,   default: "---\n- ''\n"
    t.string   "study_type",                  limit: 255
    t.string   "studies_center",              limit: 255
    t.string   "last_semester",               limit: 255
    t.text     "interests",                   limit: 65535
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "cv_file_name",                limit: 255
    t.string   "cv_content_type",             limit: 255
    t.integer  "cv_file_size",                limit: 4
    t.datetime "cv_updated_at"
  end

end
