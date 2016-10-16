class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.text :image_url
      t.belongs_to :section, foreign_key: true

      t.timestamps
    end
  end
end
