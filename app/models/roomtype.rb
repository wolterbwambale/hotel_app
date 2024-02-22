class Roomtype < ApplicationRecord
    has_many :room_masters
    validates:code,:name,:max_guest,:minium_advance,:cancel_charges, presence: true
    validates:name ,uniqueness:{message:"Already exist"}
end
