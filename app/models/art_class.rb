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

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description_and_location,
  against: [ :title, :description, :location ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  def display_dates
    dates.split(", ").map { |date_str| Date.parse(date_str).strftime("%b %d, %Y") }.join(", ")
  end
end
