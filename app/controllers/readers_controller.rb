class ReadersController < ApplicationController

  def show
    @reader = Reader.find(params[:id])
  end

  def reservations
    @reader = Reader.find(params[:id])
    @reservations = @reader.reservations
  end

end