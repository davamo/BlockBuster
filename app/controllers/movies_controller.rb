class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def movie_params
    params.require(:movie).permit(:title, :customer_id)
  end



  #def update
   # @movie = Movie.find(params[:id])

   # if @movie.update(movie_params)
   #   flash[:notice] = 'Película actualizada exitosamente.'
   #   redirect_to movie_path(@movie)
   # else
   #   render 'edit'
   # end
  #end


  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path, notice: 'Movie was successfully deleted.'
  end

end
