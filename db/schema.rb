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

ActiveRecord::Schema.define(version: 20160228051817) do

  create_table "autos", force: :cascade do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "placa"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "autos", ["cliente_id"], name: "index_autos_on_cliente_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre_completo"
    t.integer  "tipo_doc_id"
    t.string   "documento"
    t.string   "telefono"
    t.integer  "cantidad_auto"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "clientes", ["tipo_doc_id"], name: "index_clientes_on_tipo_doc_id"

  create_table "estados", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relacions", force: :cascade do |t|
    t.integer  "auto_id"
    t.integer  "servicio_id"
    t.integer  "estado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relacions", ["auto_id"], name: "index_relacions_on_auto_id"
  add_index "relacions", ["estado_id"], name: "index_relacions_on_estado_id"
  add_index "relacions", ["servicio_id"], name: "index_relacions_on_servicio_id"

  create_table "servicios", force: :cascade do |t|
    t.float    "cambio_aceite"
    t.float    "alineacion_balanceo"
    t.float    "reparación_automotriz"
    t.float    "mantenimiento"
    t.float    "electricidad"
    t.integer  "auto_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "servicios", ["auto_id"], name: "index_servicios_on_auto_id"

  create_table "tipodocs", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
