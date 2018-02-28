# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).

ActiveRecord::Schema.define(version: 20_180_225_132_715) do
  create_table 'clients', force: :cascade do |t|
    t.text 'name'
    t.text 'phone'
    t.text 'datestamp'
    t.text 'auto'
    t.text 'color'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'painters', force: :cascade do |t|
    t.text 'name'
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
