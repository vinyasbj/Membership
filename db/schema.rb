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

ActiveRecord::Schema.define(version: 2019_09_29_141630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "membership_forms", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.string "mother_name"
    t.integer "age"
    t.date "dob"
    t.string "sex"
    t.string "blood_group"
    t.text "local_address"
    t.integer "local_pin"
    t.string "l_mobile_no"
    t.string "l_tele_no"
    t.text "kodagu_address"
    t.integer "k_pin"
    t.string "k_mobile_no"
    t.string "k_tele_no"
    t.string "nominee_of_death_fund"
    t.date "form_date"
    t.string "applicants_sign"
    t.string "husband_name"
    t.string "husbands_mother_name"
    t.string "wifes_name"
    t.integer "no_family_members"
    t.string "occupation"
    t.string "proposer_family_name"
    t.string "proposer_mobile"
    t.string "proposer_tele"
    t.string "proposer_memebership_no"
    t.string "proposer_sign"
    t.string "seconder_family_name"
    t.string "seconder_mobile"
    t.string "seconder_tele"
    t.string "seconder_memebership_no"
    t.string "seconder_sign"
    t.string "status"
    t.integer "user_id"
    t.string "membership_fee"
    t.string "receipt_no"
    t.string "cash_dd"
    t.date "receipt_date"
    t.string "president_sign"
    t.string "hon_secretary_sign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
