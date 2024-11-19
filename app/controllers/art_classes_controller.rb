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
    @art_class = ArtClass.new
  end

  def create
  end

  def destroy
  end
end
