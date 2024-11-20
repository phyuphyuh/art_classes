class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @art_classes = ArtClass.all
    @art_classes_samples = @art_classes.sample(6)
  end
end
