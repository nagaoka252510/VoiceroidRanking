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

ActiveRecord::Schema.define(version: 2018_10_14_111732) do

  create_table "NICO_VIDEO_INFO", primary_key: "CONTENT_ID", id: :text, force: :cascade do |t|
    t.text "YEAR_MONTH", null: false
    t.text "TITLE", null: false
    t.text "TAG1"
    t.text "TAG2"
    t.text "TAG3"
    t.text "TAG4"
    t.text "TAG5"
    t.text "TAG6"
    t.text "TAG7"
    t.text "TAG8"
    t.text "TAG9"
    t.text "TAG10"
    t.text "TAG11"
    t.text "CATEGORY_TAG", null: false
    t.decimal "VIEW_CNT", null: false
    t.decimal "MYLIST_CNT", null: false
    t.decimal "COMMENT_CNT", null: false
    t.text "START_DATE", null: false
    t.decimal "LENGTH_SEC"
    t.text "LAST_COMMENT_TIME"
    t.text "CREATE_DATE", null: false
  end

end
