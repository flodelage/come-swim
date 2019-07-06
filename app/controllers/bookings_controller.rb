class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @swimming_pool = SwimmingPool.find(params[:swimming_pool_id])
    @swimming_pool = @booking.swimming_pool

    if @booking.save
      redirect_to root_path, notice: "votre réservation a bien été enregistrée !" # A modifier lors de la creation du dashboard#profil
    else
      render "swimming_pools/show"
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :participant)
  end
end
