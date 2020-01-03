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

ActiveRecord::Schema.define(version: 2020_01_03_101812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_plot_updates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "movie_id"], name: "index_movie_plot_updates_on_user_id_and_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", limit: 150
    t.string "plot_description", limit: 300
    t.bigint "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies_users", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
    t.index ["user_id", "movie_id"], name: "index_movies_users_on_user_id_and_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first"
    t.string "last"
    t.string "username"
    t.string "email"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "movie_id"
  end

  add_foreign_key "users", "movies"
end
