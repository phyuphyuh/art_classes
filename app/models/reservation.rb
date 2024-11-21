class Reservation < ApplicationRecord
  belongs_to :art_class
  belongs_to :user
  enum status: [ :pending, :accepted, :rejected ]
end
