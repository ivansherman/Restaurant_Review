class ReviewsController < ApplicationController

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@review = @restaurant.reviews.create(params_include_user_id)
		flash[:notice] = "Woohoo new review!"
		redirect_to @restaurant
	end	

	 def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end


	private

		def params_include_user_id
			review_params.merge(user_id: session[:user_id])
		end

		def review_params
			params.require(:review).permit(:comment, :rating, :recommendation)
		end

end
