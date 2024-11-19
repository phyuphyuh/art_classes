class ReservationsController < ApplicationController
  def index
    @reservations_as_student = current_user.reservations
    @reservations_as_teacher = current_user.reservations_as_teacher
  end

  def create
  end

  def update
  end

  def destroy
  end
end
