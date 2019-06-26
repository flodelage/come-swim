class CreateSwimmingPools < ActiveRecord::Migration[5.2]
  def change
    create_table :swimming_pools do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :length
      t.integer :width
      t.boolean :heated
      t.string :type
      t.integer :capacity
      t.boolean :availability, default: true
      t.integer :price
      t.references :bookings

      t.timestamps
    end
  end
end
