class IssuesController < ApplicationController
  def new
    @books = Book.all
    @students = Student.all

    @borrowed_book = BorrowedBook.new
  end

  def create
    student = Student.find(params[:student_id])
    book = Book.find(params[:book_id])

    @borrowed_book = BorrowedBook.new(student: student, book: book)

    if @borrowed_book.save
      redirect_to student, notice: "Book was issued successfully."
    else
      @books = Book.all
      @students = Student.all

      render :new
    end
  end

  def index
    @borrowed_books = BorrowedBook.all
  end

  def destroy
    @borrowed_book = BorrowedBook.find(params[:id])

    if @borrowed_book.destroy
      redirect_to issues_path, notice: "Book was returned successfully"
    else
      redirect_to root_path, alert: "Sorry, failed to returned book."
    end
  end
end
