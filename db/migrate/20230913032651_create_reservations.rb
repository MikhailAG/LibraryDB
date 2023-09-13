class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :book_copy
      t.belongs_to :reader

      t.timestamps
    end
  end
end
