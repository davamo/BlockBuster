class CreateJoinTableMoviesRentals < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :rentals do |t|
      # t.index [:movie_id, :rental_id]
      # t.index [:rental_id, :movie_id]
    end
  end
end
