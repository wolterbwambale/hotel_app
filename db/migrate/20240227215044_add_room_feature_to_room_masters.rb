class AddRoomFeatureToRoomMasters < ActiveRecord::Migration[7.1]
  def change
    add_reference :room_masters, :room_feature, null: false, foreign_key: true
  end
end
