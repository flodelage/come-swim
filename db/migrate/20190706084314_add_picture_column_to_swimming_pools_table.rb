class AddPictureColumnToSwimmingPoolsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :swimming_pools, :picture, :string
  end
end
