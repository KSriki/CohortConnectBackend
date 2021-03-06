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

ActiveRecord::Schema.define(version: 2018_11_09_213452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_statuses", force: :cascade do |t|
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "type"
    t.date "time_of_event"
    t.string "login"
    t.integer "user_id"
    t.string "repo_name"
    t.string "repo_url"
    t.string "git_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "event_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "login"
    t.string "avatar_url"
    t.string "bio"
    t.string "html_url"
    t.string "email"
    t.string "github_identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
