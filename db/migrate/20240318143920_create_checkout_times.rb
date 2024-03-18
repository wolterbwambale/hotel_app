class CreateCheckoutTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :checkout_times do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
