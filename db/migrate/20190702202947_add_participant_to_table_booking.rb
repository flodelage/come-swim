class AddParticipantToTableBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :participant, :integer
  end
end
