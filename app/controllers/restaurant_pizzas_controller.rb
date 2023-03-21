class RestaurantPizzasController < ApplicationController
    def index
      restaurant = Restaurant.find(params[:restaurant_id])
      restaurant_pizzas = restaurant.restaurant_pizzas
      render json: restaurant_pizzas
    end
  
    def show
      restaurant_pizza = RestaurantPizza.find(params[:id])
      render json: restaurant_pizza
    end
  
    def create
      restaurant = Restaurant.find(params[:restaurant_id])
      restaurant_pizza = restaurant.restaurant_pizzas.build(restaurant_pizza_params)
      if restaurant_pizza.save
        render json: restaurant_pizza, status: :created
      else
        render json: restaurant_pizza.errors, status: :unprocessable_entity
      end
    end
  
    def update
      restaurant_pizza = RestaurantPizza.find(params[:id])
      if restaurant_pizza.update(restaurant_pizza_params)
        render json: restaurant_pizza
      else
        render json: restaurant_pizza.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      restaurant_pizza = RestaurantPizza.find(params[:id])
      restaurant_pizza.destroy
      head :no_content
    end
  
    private
  
    def restaurant_pizza_params
      params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
  end
  