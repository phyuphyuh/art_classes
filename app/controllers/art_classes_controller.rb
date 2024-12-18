class ArtClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:category].present?
      @art_classes = ArtClass.where(category: params[:category])
    elsif params[:query].present?
      @art_classes = ArtClass.search_by_title_and_description_and_location(params[:query])
    else
      @art_classes = ArtClass.all
    end
    @markers = @art_classes.geocoded.map do |art_class|
      {
        lat: art_class.latitude,
        lng: art_class.longitude
      }
    end
  end

  def show
    @art_class = ArtClass.find(params[:id])
    @reservation = Reservation.new
    @markers = [{
        lat: @art_class.latitude,
        lng: @art_class.longitude
      }]
  end

  def new
    @art_class = ArtClass.new
  end

  def create
    @art_class = ArtClass.new(art_class_params)
    @art_class.user = current_user
    if (@art_class.save)
      redirect_to art_class_path(@art_class)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end

  def art_class_params
    params.require(:art_class).permit(:title, :description, :price, :category, :location, :dates, :photo, :user_id)
  end
end
