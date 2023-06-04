class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def movie_params
    params.require(:movie).permit(:title, :customer_id)
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      flash[:notice] = 'Película actualizada exitosamente.'
      redirect_to movie_path(@movie)
    else
      render 'edit'
    end
  end

end
