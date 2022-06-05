# books controller
class BooksController < ApplicationController
  before_action :find_book, only: %i[show destroy]

  # GET /books
  def index
    books = Book.all
    books = books.where(published: true)
    books = books.where(title: params[:title]) if params[:title].present?
    books = books.where(price: params[:price]) if params[:price].present?

    json_response(books)
  end

  # GET /books/:id
  def show
    json_response(@book)
  end

  def create
    book = Book.create!(book_params)
    json_response({ message: "Book #{book.title} added successfully" })
  end

  def destroy
    @book.published = false
    @book.update(book_params)
    json_response({ message: "Book #{@book.title} unpublished successfully" })
  end

  private

  def book_params
    params.permit(:title, :description, :price, :user_id)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
