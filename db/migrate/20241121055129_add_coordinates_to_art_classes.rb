class AddCoordinatesToArtClasses < ActiveRecord::Migration[7.1]
  def change
    add_column :art_classes, :latitude, :float
    add_column :art_classes, :longitude, :float
  end
end
