class RecipesController < ApplicationController
	before_action :find_food, only: [:show, :edit, :update, :destroy]
  def index

  end

  def show

  	
  end

  def new
  	@food =Food.new
  	
  end
  def create
  	@food = Food.new(food_params)
    if @food.save
      redirect_to @food, notice: "Successfully created new recipe"
    else
      render 'new'
      
    end
  end

private

def food_params
	params.require(:food).permit(:title, :description)
	
end

def find_food
	@food = Food.find(params[:id])
	
end

end
