class AddReturnedAtToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :returned_at, :datetime
  end
end
