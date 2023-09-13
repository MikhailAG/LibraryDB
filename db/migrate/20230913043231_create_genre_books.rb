class CreateGenreBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :genre_books do |t|
      t.belongs_to :genre
      t.belongs_to :book
    end
    add_index :genre_books, [:genre_id, :book_id], unique: true
  end
end
