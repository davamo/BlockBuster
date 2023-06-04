class RentalsController < ApplicationController
  def index
    @movies = Movie.all
  end

  def rent_movies
    @movie = Movie.find(params[:id])
    @customers = Customer.all
  end
end
