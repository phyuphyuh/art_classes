class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @art_classes = ArtClass.all
    @art_classes_samples = @art_classes.sorted_by_earliest_date.first(6)
  end
end
