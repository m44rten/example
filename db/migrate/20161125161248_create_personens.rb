class CreatePersonens < ActiveRecord::Migration
  def change
    create_table :personens do |t|
      t.text :voornaam
      t.text :achternaam
      t.string :email
      t.text :telefoon
      t.text :mobiel
      t.text :tussenvoegsel
      t.text :type
      t.text :functie
      t.text :afdeling
      t.references :bedrijf, index: true

      t.timestamps
    end
  end
end
