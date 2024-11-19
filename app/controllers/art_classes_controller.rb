class ArtClassesController < ApplicationController
  def index
    if params[:category].present?
      @art_classes = ArtClass.where(category: params[:category])
    else
      @art_classes = ArtClass.all
    end
  end

  def show
    @artclass = ArtClass.find(params[:id])
  end

  def new
  end

  def create
    @art_class = ArtClass.new(art_class_params)
    if (@art_class.save)
      redirect_to art_class_path(@art_class)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end

  def art_class_params
    params.require(:art_class).permit(:description, :price, :category, :location, :dates, :photo)
  end
end