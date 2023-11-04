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

ActiveRecord::Schema.define(version: 2023_10_06_055533) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "account", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "assignment_teachers", force: :cascade do |t|
    t.integer "assignment_id"
    t.integer "teacher_id"
    t.integer "grade", limit: 1
    t.string "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_assignment_teachers_on_assignment_id"
    t.index ["teacher_id"], name: "index_assignment_teachers_on_teacher_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "account", limit: 8
    t.string "group", limit: 1
    t.integer "grade", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "account", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
