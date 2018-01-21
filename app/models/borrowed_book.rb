class BorrowedBook < ApplicationRecord
  belongs_to :student
  belongs_to :book

  validates :book_id, uniqueness: { scope: :student_id, message: "can be issued just once by the same student" }
end
