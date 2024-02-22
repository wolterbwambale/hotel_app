class CreateRoomMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :room_masters do |t|
      t.integer :room_no
      t.time :maximum_clean_time
      t.string :block
      t.integer :floor
      t.integer :key_code
      t.string :occupancy
      t.references :roomtype, null: false, foreign_key: true

      t.timestamps
    end
  end
end
