class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.text :naam
      t.text :document
      t.references :order, index: true

      t.timestamps
    end
  end
end
