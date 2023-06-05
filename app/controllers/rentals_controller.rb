class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @customers = Customer.all
    @movies = Movie.all
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    #@rental.customer = Customer.find(params[:rental][:customer_id])

    if @rental.save
      @rentals = Rental.all
      redirect_to @rental, notice: 'Rental created successfully.'
    else
      # Failed to create the rental, display the form again with error messages
      @customers = Customer.all
      @movies = Movie.all
      render :index
    end
  end

  private

  #def rental_params
   # params.require(:rental).permit(:customer_id, movie_ids: [])
  #end

  #def rental_params
  #  params.require(:rental).permit(:customer_id, :movie_id, movie_ids: []) # Asegúrate de incluir :movie_id en los parámetros permitidos
  #end

  def rental_params
    params.require(:rental).permit(:customer_id, :movie_id)
  end
end
