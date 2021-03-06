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

ActiveRecord::Schema.define(version: 20201223134003) do

  create_table "recruits", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.string   "prefecture", null: false
    t.string   "address",    null: false
    t.integer  "level_type", null: false
    t.datetime "start_at",   null: false
    t.datetime "end_at",     null: false
    t.text     "comment",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "team_id",                null: false
    t.integer  "recruit_id",             null: false
    t.integer  "status",     default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["recruit_id"], name: "index_requests_on_recruit_id"
    t.index ["team_id"], name: "index_requests_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "leader_name",     null: false
    t.string   "phone_number",    null: false
    t.string   "email",           null: false
    t.integer  "level_type",      null: false
    t.string   "password_digest", null: false
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
