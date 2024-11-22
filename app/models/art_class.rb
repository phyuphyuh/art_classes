class ArtClass < ApplicationRecord
  belongs_to :user
  has_many :reviews
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
  scope :with_pending_reservations, -> {
    joins(:reservations).where(reservations: { status: 'pending' }).distinct
  }
  scope :with_accepted_reservations, -> {
    joins(:reservations).where(reservations: { status: 'accepted' }).distinct
  }
  scope :sorted_by_earliest_date, -> {
    all.to_a.sort_by do |art_class|
      earliest_date = art_class.dates
                               .split(',')
                               .map(&:strip)
                               .map { |date| Date.strptime(date, '%y/%m/%d') }
                               .min
      earliest_date || Date.new(9999, 12, 31) # Handle cases where dates might be empty
    end
  }

  def old?
    dates_as_dates = dates.split(',').map(&:strip).map { |date| Date.strptime(date, '%y/%m/%d') }
    is_old = true
    dates_as_dates.each do |date|
      is_old = false if date > Date.current
    end
    return is_old
  end

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
