# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_05_003113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "degree"
    t.string "university_name"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "student_id"
    t.string "start_date"
    t.string "end_date"
    t.string "job_title"
    t.string "company_name"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "student_id"
    t.string "name"
    t.text "description"
    t.string "url"
    t.string "screenshot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "student_id"
    t.string "skill_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.text "short_bio"
    t.string "linkedin_url"
    t.string "twitter_handle"
    t.string "website_url"
    t.string "resume_url"
    t.string "github_url"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
