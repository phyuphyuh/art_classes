class ReservationsController < ApplicationController
  def index
    @reservations_as_student = current_user.reservations
    @reservations_as_teacher = current_user.reservations_as_teacher
  end

  def create
    @art_class = ArtClass.find(params[:art_class_id])
    @reservation = Reservation.new
    @reservation.art_class = @art_class
    @reservation.user = current_user
    @reservation.status = "pending"
    if @reservation.save
      redirect_to reservations_path
    else
      redirect_to art_class_path(@art_class) # shouldnt ever get here
    end
  end

  def update
  end

  def destroy
  end
end
