class ArtClass < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :price, presence: true
  validates :location, presence: true
  validates :dates, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  CATEGORIES = ["Pottery", "Oil Painting", "Watercolor", "Acrylic", "Still Life", "Sketching", "Manga", "Sculpture", "DIY", "Other"]
  validates :category, inclusion: { in: CATEGORIES }
  has_one_attached :photo

  def display_dates
    dates.split(", ").map { |date_str| Date.parse(date_str).strftime("%b %d, %Y") }.join(", ")
  end
end
