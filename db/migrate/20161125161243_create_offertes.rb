class CreateOffertes < ActiveRecord::Migration
  def change
    create_table :offertes do |t|
      t.text :onderwerp
      t.datetime :datum
      t.text :status
      t.text :offerte_nummer

      t.timestamps
    end
  end
end
