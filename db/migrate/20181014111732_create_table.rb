class CreateTable < ActiveRecord::Migration[5.2]
  def change
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
end
