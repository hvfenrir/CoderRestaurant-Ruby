class MenuController < ApplicationController
  def index
  	@sections = ['Breakfast','Lunch','Dinner','Drinks']
  	@sort_types = ['A-Z','Z-A','Price low to high','Price high to low']

  	if params[:sort] == 'A-Z'
  		@sort = "name"
  	elsif params[:sort] == 'Z-A'
  		@sort = "name desc"
  	elsif params[:sort] == 'Price high to low'
  		@sort = "price desc"
  	elsif params[:sort] == 'Price low to high'
  		@sort = "price"
  	end

  	if params[:section]
  		@food_items = Food.page(params[:page]).per(5).filter_by_section(params[:section],@sort)
  	else
  		if params[:sort]
  			@food_items = Food.page(params[:page]).per(5).order(@sort)
  		else
  			@food_items = Food.page(params[:page]).per(5)
  		end
  	end
  end
end
