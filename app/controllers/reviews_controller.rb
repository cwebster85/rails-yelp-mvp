class ReviewsController < ApplicationController

# def index
#   @reviews = Restaurant.all
# end

# def show
#   @restaurants = Restaurant.find(params[:id])
# end

def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant = @restaurant
  if @review.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new
  end
end

def review_params
    params.require(:review).permit(:rating, :content)
end

def destroy
  @review = Review.find(params[:id])
  @review.destroy
    redirect_to restaurant_path(@review.restaurant)
end
end
