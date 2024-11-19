class ArtClassesController < ApplicationController
  def index
    @art_classes = ArtClass.all
  end

  def show
    @artclass = ArtClass.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
