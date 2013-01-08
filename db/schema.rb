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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130107131516) do

  create_table "rx_bugs", :force => true do |t|
    t.string   "rx"
    t.string   "tx"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "id_events_start"
    t.string   "id_events"
    t.string   "rx1"
    t.string   "tx1"
    t.string   "start_time1"
    t.string   "end_time1"
    t.string   "id_events_start1"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "rx_by_days", :force => true do |t|
    t.string "rx",            :limit => 50
    t.string "date1",         :limit => 50
    t.string "count_minutes", :limit => 50
  end

  create_table "rx_by_hours", :force => true do |t|
    t.string   "rx"
    t.string   "date1"
    t.string   "hour"
    t.string   "count_seconds"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tx_by_days", :force => true do |t|
    t.string "tx",            :limit => 50
    t.string "date1",         :limit => 50
    t.string "count_minutes", :limit => 50
  end

  create_table "tx_by_hours", :primary_key => "Id", :force => true do |t|
    t.string "tx",            :limit => 50
    t.string "date1",         :limit => 50
    t.string "hour",          :limit => 50
    t.string "count_seconds", :limit => 50
  end

end
