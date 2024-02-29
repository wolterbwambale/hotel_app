class CreateNationalities < ActiveRecord::Migration[7.1]
  def change
    create_table :nationalities do |t|
      t.string :code
      t.string :name
      t.string :short_name
      t.timestamps
    end
  end
end
