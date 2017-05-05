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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170502004637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip_code"
    t.string   "phone_number"
    t.boolean  "payment_status"
    t.boolean  "background_check"
    t.string   "application_status"
    t.string   "resume"
    t.string   "health_form"
    t.text     "personal_essay"
    t.string   "toefl_score"
    t.string   "name_of_spouse"
    t.string   "birth_place"
    t.datetime "birth_date"
    t.string   "country_of_citizenship"
    t.string   "occupation"
    t.string   "ages_of_children"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "charges", force: :cascade do |t|
    t.string   "uid"
    t.integer  "user_id"
    t.decimal  "amount",      precision: 8, scale: 2
    t.string   "customer_id"
    t.string   "description"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "course_registrations", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal  "price",       precision: 7, scale: 2
    t.text     "description"
    t.string   "lecturer"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "application_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "category"
    t.string   "attachment_file_name"
    t.integer  "attachment_file_size"
    t.string   "attachment_content_type"
    t.datetime "attachment_updated_at"
  end

  create_table "educations", force: :cascade do |t|
    t.integer  "application_id"
    t.string   "school"
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "degree"
    t.datetime "degree_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "local_schools", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "principal_name"
    t.string   "contact_name"
    t.string   "school_address"
    t.text     "bio"
  end

  create_table "montessori_trainings", force: :cascade do |t|
    t.integer  "application_id"
    t.string   "name"
    t.string   "location"
    t.string   "diploma"
    t.string   "degree"
    t.datetime "degree_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.boolean  "experience"
  end

  create_table "references", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "middle_initial"
    t.boolean  "donor"
    t.integer  "role"
    t.integer  "local_school_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "work_experiences", force: :cascade do |t|
    t.integer  "application_id"
    t.string   "employer"
    t.string   "occupation"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
