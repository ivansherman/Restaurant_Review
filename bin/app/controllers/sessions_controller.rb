class SessionsController < ApplicationController
	
	def create
		params[:email]
		user = User.where(email: params[:email]).first
		if user
			session[:user_id] = user.id
			flash[:notice] = "Welcome back, #{user.name}!"
			redirect_to root_url
		else
			flash[:alert] = "Failed login" 
			redirect_to login_url
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "You have logged out!"
	end

end
