class ArtClassesController < ApplicationController
  def index
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
