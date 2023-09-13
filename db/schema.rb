# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_13_044421) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "author_id", null: false
    t.index ["author_id", "book_id"], name: "index_authors_books_on_author_id_and_book_id"
    t.index ["book_id", "author_id"], name: "index_authors_books_on_book_id_and_author_id"
  end

  create_table "book_copies", force: :cascade do |t|
    t.bigint "book_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_copies_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_genres", id: false, force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "genre_id", null: false
    t.index ["book_id", "genre_id"], name: "index_books_genres_on_book_id_and_genre_id"
    t.index ["genre_id", "book_id"], name: "index_books_genres_on_genre_id_and_book_id"
  end

  create_table "genre_books", force: :cascade do |t|
    t.bigint "genre_id"
    t.bigint "book_id"
    t.index ["book_id"], name: "index_genre_books_on_book_id"
    t.index ["genre_id", "book_id"], name: "index_genre_books_on_genre_id_and_book_id", unique: true
    t.index ["genre_id"], name: "index_genre_books_on_genre_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "book_copy_id"
    t.bigint "reader_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_copy_id"], name: "index_reservations_on_book_copy_id"
    t.index ["reader_id"], name: "index_reservations_on_reader_id"
  end

end
