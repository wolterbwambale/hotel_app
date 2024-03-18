class CreateMarketExecutives < ActiveRecord::Migration[7.1]
  def change
    create_table :market_executives do |t|
      t.string :market_executive_code
      t.string :name

      t.timestamps
    end
  end
end
