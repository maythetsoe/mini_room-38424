class DonationRoom < ApplicationRecord
  belongs_to :mini_room
  belongs_to :donation
end
