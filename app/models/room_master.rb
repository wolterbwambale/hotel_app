class RoomMaster < ApplicationRecord
  belongs_to :roomtype
  has_many :roomfeatures
  validates:room_no, presence: true ,uniqueness:{message:"Already exist"}
end
