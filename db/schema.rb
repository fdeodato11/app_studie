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

ActiveRecord::Schema.define(version: 2019_11_05_052702) do

  create_table "arquivo_licensas", force: :cascade do |t|
    t.integer "arquivo_id"
    t.integer "licensa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arquivo_id"], name: "index_arquivo_licensas_on_arquivo_id"
    t.index ["licensa_id"], name: "index_arquivo_licensas_on_licensa_id"
  end

  create_table "arquivos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licensas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_arquivos", force: :cascade do |t|
    t.integer "arquivo_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["arquivo_id"], name: "index_user_arquivos_on_arquivo_id"
    t.index ["user_id"], name: "index_user_arquivos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "telefone"
    t.string "instituicao"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
