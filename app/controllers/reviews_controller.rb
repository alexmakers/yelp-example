class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find params[:restaurant_id]
    @review = Review.create(params[:review].permit(:body, :rating))
    @restaurant.reviews << @review

    redirect_to @restaurant
  end

end
