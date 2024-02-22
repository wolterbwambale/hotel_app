class AddBedToRoomMasters < ActiveRecord::Migration[7.1]
  def change
    add_column :room_masters, :bed, :integer
  end
end
