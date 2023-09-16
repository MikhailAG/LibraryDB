class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def upload_cover
    book = Book.find(params[:book_id])
    book.cover.attach(params[:cover])
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :cover, author_ids: [], genre_ids: [])
  end

end

