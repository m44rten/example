class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :naam
      t.integer :nummer
      t.decimal :prijs
      t.references :personen, index: true

      t.timestamps
    end
  end
end
