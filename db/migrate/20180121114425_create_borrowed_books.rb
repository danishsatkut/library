class CreateBorrowedBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :borrowed_books do |t|
      t.references :student, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
