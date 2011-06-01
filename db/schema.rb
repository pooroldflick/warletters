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

ActiveRecord::Schema.define(:version => 20110601005151) do

  create_table "brigades", :force => true do |t|
    t.string   "identity"
    t.integer  "regiment_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "identity"
    t.integer  "person_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "letters", :force => true do |t|
    t.date     "datewritten"
    t.string   "author"
    t.text     "letter"
    t.string   "recipient"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "visability"
    t.integer  "user_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.boolean  "service"
    t.string   "regiment"
    t.string   "company"
    t.string   "mustered_in"
    t.string   "mustered_out"
    t.integer  "letter_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.string   "side"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "letters_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regiments", :force => true do |t|
    t.string   "ordinal"
    t.boolean  "volunteer"
    t.string   "state"
    t.string   "reg_type"
    t.string   "company"
    t.boolean  "independent"
    t.string   "name"
    t.string   "nickname"
    t.text     "notes"
    t.integer  "person_id"
    t.integer  "battle_id"
    t.integer  "corps_id"
    t.integer  "brigade_id"
    t.integer  "division_id"
    t.integer  "army_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email"

end
