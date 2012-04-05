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

ActiveRecord::Schema.define(:version => 20120405181116) do

  create_table "todos", :force => true do |t|
    t.integer  "context_id"
    t.integer  "project_id"
    t.integer  "recurring_todo_id"
    t.integer  "user_id"
    t.string   "description"
    t.string   "state"
    t.text     "notes"
    t.datetime "due"
    t.datetime "completed_at"
    t.datetime "show_from"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "tags"
  end

  add_index "todos", ["tags"], :name => "index_todos_on_tags"

end