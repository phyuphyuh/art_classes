class PagesController < ApplicationController
  def home
    @art_classes = ArtClass.all
    @art_classes_samples = @art_classes.sample(3)
  end
end
