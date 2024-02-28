class RoomMaster < ApplicationRecord
  belongs_to :roomtype
  belongs_to :room_feature
  validates:room_no, presence: true ,uniqueness:{message:"Already exist"}
end
