class CustomersController < ApplicationController

  def index
    @customers = Customer.includes(:movies).all
  end

  def rent_movies
    @customer = Customer.find(params[:id])
    @movies = Movie.where(rented: false) # Obtener películas no arrendadas
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      # Marcar las películas seleccionadas como arrendadas
      Movie.where(id: params[:customer][:movie_ids]).update_all(rented: true)
      redirect_to @customer, notice: 'Movies rented successfully.'
    else
      render :rent_movies
    end
  end



end
