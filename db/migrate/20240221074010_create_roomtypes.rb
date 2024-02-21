class CreateRoomtypes < ActiveRecord::Migration[7.1]
  def change
    create_table :roomtypes do |t|
      t.string :code
      t.string :name
      t.integer :max_guest
      t.integer :minium_advance
      t.integer :cancel_charges

      t.timestamps
    end
  end
end
