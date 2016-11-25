class CreatePrijs < ActiveRecord::Migration
  def change
    create_table :prijs do |t|
      t.integer :product_nummer
      t.text :naam

      t.timestamps
    end
  end
end
