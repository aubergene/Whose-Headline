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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110423191006) do

  create_table "headlines", :force => true do |t|
    t.integer  "source_id"
    t.string   "guid"
    t.string   "title"
    t.string   "link"
    t.datetime "published_at"
    t.datetime "created_at"
  end

  create_table "played_sources", :force => true do |t|
    t.integer  "source_id"
    t.integer  "play_id"
    t.datetime "created_at"
  end

  create_table "plays", :force => true do |t|
    t.integer  "user_id"
    t.integer  "headline_id"
    t.integer  "chosen_source_id"
    t.boolean  "won"
    t.datetime "created_at"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.string   "logo_url"
    t.string   "rss_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "nickname"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
