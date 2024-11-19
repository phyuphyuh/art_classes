class ArtClass < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :price, presence: true
  validates :location, presence: true
  validates :dates, presence: true
  CATEGORIES = ["Pottery", "Oil Painting", "Watercolor", "Acrylic", "Still Life", "Sketching", "Manga", "Sculpture", "DIY", "Other"]
  validates :category, inclusion: { in: CATEGORIES }
  has_one_attached :photo
end
