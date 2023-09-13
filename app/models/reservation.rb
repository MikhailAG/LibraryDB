class Reservation < ApplicationRecord
  belongs_to :book_copy
  belongs_to :reader
end