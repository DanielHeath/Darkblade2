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

ActiveRecord::Schema.define(:version => 20110602140803) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "intelligence",  :default => 1
    t.integer  "wits",          :default => 1
    t.integer  "resolve",       :default => 1
    t.integer  "strength",      :default => 1
    t.integer  "dexterity",     :default => 1
    t.integer  "stamina",       :default => 1
    t.integer  "presence",      :default => 1
    t.integer  "manipulation",  :default => 1
    t.integer  "composure",     :default => 1
    t.integer  "academics",     :default => 0
    t.integer  "computer",      :default => 0
    t.integer  "crafts",        :default => 0
    t.integer  "investigation", :default => 0
    t.integer  "medicine",      :default => 0
    t.integer  "occult",        :default => 0
    t.integer  "politics",      :default => 0
    t.integer  "science",       :default => 0
    t.integer  "athletics",     :default => 0
    t.integer  "brawl",         :default => 0
    t.integer  "drive",         :default => 0
    t.integer  "firearms",      :default => 0
    t.integer  "larceny",       :default => 0
    t.integer  "stealth",       :default => 0
    t.integer  "survival",      :default => 0
    t.integer  "weaponry",      :default => 0
    t.integer  "animal ken",    :default => 0
    t.integer  "empathy",       :default => 0
    t.integer  "expression",    :default => 0
    t.integer  "intimidation",  :default => 0
    t.integer  "persuasion",    :default => 0
    t.integer  "socialize",     :default => 0
    t.integer  "streetwise",    :default => 0
    t.integer  "subterfuge",    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prime",         :default => 0
    t.integer  "fate",          :default => 0
    t.integer  "mind",          :default => 0
    t.integer  "spirit",        :default => 0
    t.integer  "death",         :default => 0
    t.integer  "forces",        :default => 0
    t.integer  "time",          :default => 0
    t.integer  "space",         :default => 0
    t.integer  "life",          :default => 0
    t.integer  "matter",        :default => 0
  end

end
