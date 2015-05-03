class SessionController < ApplicationController

	def index
	end

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			log_in user
      		redirect_to '/ask'
		else 
			flash[:danger] = 'Invalid email/password combination' 
			render 'index'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end

end
