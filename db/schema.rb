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

ActiveRecord::Schema.define(version: 2019_01_24_095721) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prestataires", force: :cascade do |t|
    t.string "categorie"
    t.string "nom"
    t.string "remise"
    t.string "prestation"
    t.text "description"
    t.string "ville"
    t.string "imageurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "restaurants", force: :cascade do |t|
    t.text "q1"
    t.text "q2"
    t.text "q3"
    t.text "q4"
    t.text "q5"
    t.text "q6"
    t.text "q7"
    t.text "q8"
    t.text "q9"
    t.text "q10"
    t.text "q11"
    t.text "q12"
    t.text "q13"
    t.text "q14"
    t.text "q15"
    t.text "q16"
    t.text "q17"
    t.text "q18"
    t.text "q19"
    t.text "q20"
    t.text "q21"
    t.text "q22"
    t.text "q23"
    t.text "q24"
    t.text "q25"
    t.text "q26"
    t.text "q27"
    t.text "q28"
    t.text "q29"
    t.text "q30"
    t.text "q31"
    t.text "q32"
    t.text "q33"
    t.text "q34"
    t.text "q35"
    t.text "q36"
    t.text "q37"
    t.text "q38"
    t.text "q39"
    t.text "q40"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
