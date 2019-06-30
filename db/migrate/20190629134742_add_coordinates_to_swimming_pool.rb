class AddCoordinatesToSwimmingPool < ActiveRecord::Migration[5.2]
  def change
    add_column :swimming_pools, :latitude, :float
    add_column :swimming_pools, :longitude, :float
  end
end
