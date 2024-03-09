class CreateMealplans < ActiveRecord::Migration[7.1]
  def change
    create_table :mealplans do |t|
      t.string :code
      t.string :name
      t.date :effective_date

      t.timestamps
    end
  end
end
