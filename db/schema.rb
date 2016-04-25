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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160425050435) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "consultations", force: :cascade do |t|
    t.string   "date"
    t.integer  "medic_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consultations", ["medic_id"], name: "index_consultations_on_medic_id"
  add_index "consultations", ["patient_id"], name: "index_consultations_on_patient_id"

  create_table "details", force: :cascade do |t|
    t.integer  "consultation_id"
    t.string   "reason"
    t.string   "symptoms"
    t.string   "diagnosis"
    t.string   "medicament"
    t.decimal  "total"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "details", ["consultation_id"], name: "index_details_on_consultation_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "doctors", ["email"], name: "index_doctors_on_email", unique: true
  add_index "doctors", ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true

  create_table "medics", force: :cascade do |t|
    t.integer  "doctor_id"
    t.integer  "specialty_id"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "medics", ["doctor_id"], name: "index_medics_on_doctor_id"
  add_index "medics", ["specialty_id"], name: "index_medics_on_specialty_id"

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "state"
    t.string   "city"
    t.string   "address"
    t.string   "cp"
    t.string   "email"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "blood_type"
    t.string   "smoking"
    t.string   "alcoholism"
    t.text     "hereditary_background"
    t.text     "pathological"
    t.text     "non_pathological"
    t.text     "allergies"
    t.text     "surgeries"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
