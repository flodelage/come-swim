class AddUserIdToSwimmingPoolTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :swimming_pools, :user, index: true
  end
end
