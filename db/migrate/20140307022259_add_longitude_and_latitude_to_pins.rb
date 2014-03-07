class AddLongitudeAndLatitudeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :longitude, :float
    add_column :pins, :latitude, :float
  end
end
