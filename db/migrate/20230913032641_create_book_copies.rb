class CreateBookCopies < ActiveRecord::Migration[7.0]
  def change
    create_table :book_copies do |t|
      t.belongs_to :book
      t.integer :quantity

      t.timestamps
    end
  end
end
