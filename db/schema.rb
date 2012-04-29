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

ActiveRecord::Schema.define(:version => 20120429223740) do

  create_table "bills", :force => true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.string   "reference_id"
    t.date     "bill_date"
    t.date     "due_date"
    t.decimal  "value",        :precision => 10, :scale => 2
    t.text     "comment"
    t.boolean  "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "registration_number"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "plan_id",             :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.decimal  "value",         :precision => 10, :scale => 0
    t.string   "duration"
    t.integer  "project_count"
    t.integer  "user_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_users", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.string   "resource_id"
    t.string   "signature"
    t.string   "resource_type"
    t.string   "resource_uri"
    t.boolean  "subscribed",          :default => false
    t.string   "merchant_id"
    t.string   "subscription_acount"
    t.string   "resource_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.boolean  "billable"
    t.decimal  "rate",       :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeslips", :force => true do |t|
    t.integer  "project_id"
    t.integer  "task_id"
    t.integer  "user_id"
    t.decimal  "hours",      :precision => 10, :scale => 2
    t.string   "comment"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "company_admin",          :default => true
    t.boolean  "owns_company"
    t.boolean  "sub_account"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
