class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def upload_photo
    author = Author.find(params[:author_id])
    author.photo.attach(params[:photo])
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, :photo, book_ids: [])
  end

end

