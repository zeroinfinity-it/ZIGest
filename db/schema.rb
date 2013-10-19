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

ActiveRecord::Schema.define(version: 20131015152933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoice_details", force: true do |t|
    t.text     "descrizione"
    t.decimal  "VAT",                 precision: 8,  scale: 2
    t.decimal  "ImportoNoVatSingolo", precision: 16, scale: 5
    t.integer  "Qta"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "titolo"
    t.text     "descrizione"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "VAT",           precision: 6,  scale: 2
    t.decimal  "TotaleNoVat",   precision: 16, scale: 5
    t.date     "DataEmissione"
  end

end
