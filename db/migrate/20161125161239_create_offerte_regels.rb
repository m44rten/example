class CreateOfferteRegels < ActiveRecord::Migration
  def change
    create_table :offerte_regels do |t|
      t.text :artikel
      t.text :omschrijving
      t.integer :aantal
      t.text :prijs
      t.text :post
      t.references :offerte, index: true

      t.timestamps
    end
  end
end
