class RoomMaster < ApplicationRecord
  belongs_to :roomtype
  validates:room_no, presence: true ,uniqueness:{message:"Already exist"}
end
