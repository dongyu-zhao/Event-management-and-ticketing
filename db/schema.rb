# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_31_201303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "price"
    t.string "time"
    t.string "place"
    t.string "description"
  end

  create_table "friends", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "friend_id"
    t.index ["user_id"], name: "index_friends_on_user_id"
  end

  create_table "participants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.bigint "role_id"
    t.index ["event_id"], name: "index_participants_on_event_id"
    t.index ["role_id"], name: "index_participants_on_role_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "event_id"
    t.string "url"
    t.index ["event_id"], name: "index_pictures_on_event_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "display_url"
  end

  create_table "videos", force: :cascade do |t|
    t.bigint "event_id"
    t.string "url"
    t.index ["event_id"], name: "index_videos_on_event_id"
  end

end
