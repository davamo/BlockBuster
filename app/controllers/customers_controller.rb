class CustomersController < ApplicationController

  def index
    @customers = Customer.includes(:movies).all
  end

end
