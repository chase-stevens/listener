class AddCheckInAndVerification < ActiveRecord::Migration[5.2]
  def change
    add_column :listeners, :isCheckedIn, :boolean
    add_column :listeners, :isVerified, :boolean
  end
end
