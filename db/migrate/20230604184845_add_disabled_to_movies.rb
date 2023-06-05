class AddDisabledToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :disabled, :boolean
  end
end
