class CreateCoffees < ActiveRecord::Migration[7.1]
  has_one_attached :picture
  def change
    create_table :coffees do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :origin
      t.string :roast_level
      t.integer :stock_quantity
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
