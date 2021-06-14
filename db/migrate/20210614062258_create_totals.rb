class CreateTotals < ActiveRecord::Migration[6.0]
  def change
    create_table :totals do |t|
      t.string :protein, null: false
      t.string :fat, null: false
      t.string :carb, null: false
      t.string :calorie, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
