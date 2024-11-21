class Reservation < ApplicationRecord
  belongs_to :art_class
  belongs_to :user
  validates :user, uniqueness: { scope: :art_class }
  enum status: { pending: "pending", accepted: "accepted", rejected: "rejected" }
end
