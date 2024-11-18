class CreateArtClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :art_classes do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :location
      t.string :dates

      t.timestamps
    end
  end
end
