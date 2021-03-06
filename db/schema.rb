# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110119000846) do

  create_table "downloads", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "total_downloads"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.boolean  "published"
  end

  create_table "notices", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "summary"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "offers", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "date_inicio"
    t.integer  "published"
    t.integer  "total_clicks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "data_fim"
  end

  create_table "poll_questions", :force => true do |t|
    t.integer  "poll_id"
    t.string   "question"
    t.boolean  "published"
    t.integer  "total_votes", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polls", :force => true do |t|
    t.string   "name"
    t.boolean  "multiple"
    t.datetime "data_inicio"
    t.datetime "data_fim"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resellers", :force => true do |t|
    t.integer  "cod_representante"
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome_fantasia"
    t.string   "cnpj"
    t.string   "inscricao_estadual"
    t.string   "responsavel"
    t.string   "email"
    t.string   "celular"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "senha"
  end

  create_table "updates", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.boolean  "published"
    t.datetime "data_inicio"
    t.datetime "data_fim"
    t.integer  "total_lidos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "login_count"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
