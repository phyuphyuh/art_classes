class Reservation < ApplicationRecord
  belongs_to :art_class
  belongs_to :user
  # validates :user, uniqueness: { scope: :art_class }
  enum status: [ :pending, :accepted, :rejected ]
end
