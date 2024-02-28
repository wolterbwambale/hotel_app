class RoomFeature < ApplicationRecord
  has_many :room_masters
  validates :name, presence: true
end
