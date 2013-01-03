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

ActiveRecord::Schema.define(:version => 20121216070320) do

  create_table "rx_bugs", :id => false, :force => true do |t|
    t.string "rx",               :limit => 50
    t.string "tx",               :limit => 50
    t.string "start_time",       :limit => 50
    t.string "end_time",         :limit => 50
    t.string "id_events_start",  :limit => 50
    t.string "id_events",        :limit => 50
    t.string "rx1",              :limit => 50
    t.string "tx1",              :limit => 50
    t.string "start_time1",      :limit => 50
    t.string "end_time1",        :limit => 50
    t.string "id_events_start1", :limit => 50
    t.string "id_events1",       :limit => 50
  end

  create_table "rx_by_days", :force => true do |t|
    t.string "rx",            :limit => 50
    t.string "date1",         :limit => 50
    t.string "count_minutes", :limit => 50
  end

  create_table "rx_by_hours", :primary_key => "Id", :force => true do |t|
    t.string "rx",            :limit => 50
    t.string "date1",         :limit => 50
    t.string "hour",          :limit => 50
    t.string "count_seconds", :limit => 50
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
