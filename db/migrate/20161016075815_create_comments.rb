class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.integer :star
      t.belongs_to :food_item, foreign_key: true

      t.timestamps
    end
  end
end
