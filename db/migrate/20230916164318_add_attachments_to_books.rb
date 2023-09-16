class AddAttachmentsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :cover_id, :string
    add_column :authors, :photo_id, :string
  end
end
