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

  add_index "headlines", ["guid"], :name => "index_headlines_on_guid", :unique => true
  add_index "headlines", ["source_id"], :name => "index_headlines_on_source_id"

  create_table "played_sources", :force => true do |t|
    t.integer  "source_id"
    t.integer  "play_id"
    t.datetime "created_at"
  end

  add_index "played_sources", ["source_id", "play_id"], :name => "index_played_sources_on_source_id_and_play_id"

  create_table "plays", :force => true do |t|
    t.integer  "user_id"
    t.integer  "headline_id"
    t.integer  "chosen_source_id"
    t.boolean  "won"
    t.datetime "created_at"
  end

  add_index "plays", ["chosen_source_id"], :name => "index_plays_on_chosen_source_id"
  add_index "plays", ["headline_id"], :name => "index_plays_on_headline_id"
  add_index "plays", ["user_id"], :name => "index_plays_on_user_id"
  add_index "plays", ["won"], :name => "index_plays_on_won"

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
    t.boolean  "admin",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["provider", "uid"], :name => "index_users_on_provider_and_uid", :unique => true

end
