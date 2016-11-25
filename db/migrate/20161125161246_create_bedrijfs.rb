class CreateBedrijfs < ActiveRecord::Migration
  def change
    create_table :bedrijfs do |t|
      t.text :bedrijfs_naam
      t.text :kvk
      t.text :email
      t.text :website
      t.text :straat
      t.text :nummer
      t.text :postcode
      t.text :land
      t.text :plaats
      t.references :prijs, index: true

      t.timestamps
    end
  end
end
