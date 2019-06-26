class RemoveBookingdIdFromSwimmingPool < ActiveRecord::Migration[5.2]
  def change
    remove_column :swimming_pools, :bookings_id
  end
end
