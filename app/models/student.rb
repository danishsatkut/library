class Student < ApplicationRecord
  has_many :borrowed_books
  has_many :books, through: :borrowed_books

  validates :name, :rno, presence: true
end
