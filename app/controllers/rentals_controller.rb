class RentalsController < ApplicationController

  def show
    # raise
    @rental = Rental.find(params[:id])
    authorize @rental
  end

  def create
    @rental = Rental.new(rental_params)
    @flat = flat.find(params[:flat_id])
    @rental.flat = @flat
    @rental.user = current_user
    @rental.save
    authorize @rental
    redirect_to dashboard_booking_path(@rental)
  end

 private

  def rental_params
    params.require(:rental).permit(:start_time, :end_time, :flat_id, :user_id)
  end
end
