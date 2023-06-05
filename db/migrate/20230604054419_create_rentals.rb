class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.integer :movie_id, null: true # Permite valores nulos
      t.integer :customer_id
      t.datetime :rented_at
      t.datetime :returned_at
      t.timestamps
    end
  end
end
