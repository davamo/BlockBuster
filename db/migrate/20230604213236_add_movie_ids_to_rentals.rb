class AddMovieIdsToRentals < ActiveRecord::Migration[6.0]
  def change
    add_column :rentals, :movie_ids, :integer, array: true, default: []
  end
end
