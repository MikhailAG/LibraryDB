class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to @reservation
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reader_id, :book_copy_id)
  end

end