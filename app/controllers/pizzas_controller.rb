class PizzasController < ApplicationController
    def index
      pizzas = Pizza.all
      render json: pizzas
    end
  
    def show
      pizza = Pizza.find(params[:id])
      render json: pizza
    end
  
    def create
      pizza = Pizza.new(pizza_params)
      if pizza.save
        render json: pizza, status: :created
      else
        render json: pizza.errors, status: :unprocessable_entity
      end
    end
  
    def update
      pizza = Pizza.find(params[:id])
      if pizza.update(pizza_params)
        render json: pizza
      else
        render json: pizza.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      pizza = Pizza.find(params[:id])
      pizza.destroy
      head :no_content
    end
  
    private
  
    def pizza_params
      params.require(:pizza).permit(:name, :description, :price)
    end
  end
  