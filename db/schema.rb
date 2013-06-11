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

ActiveRecord::Schema.define(:version => 20130610233123) do

  create_table "carts", :force => true do |t|
    t.integer  "session_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "carts", ["session_id"], :name => "index_carts_on_session_id"

  create_table "line_items", :force => true do |t|
    t.integer  "cart_id"
    t.integer  "product_size_id"
    t.integer  "quantity"
    t.decimal  "cost"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "line_items", ["cart_id"], :name => "index_line_items_on_cart_id"

  create_table "product_sizes", :force => true do |t|
    t.integer  "size_id"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "product_sizes", ["product_id"], :name => "index_product_sizes_on_product_id"
  add_index "product_sizes", ["size_id"], :name => "index_product_sizes_on_size_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "cost"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "supplier_id"
  end

  create_table "sessions", :force => true do |t|
    t.integer  "retailer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string   "size"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
