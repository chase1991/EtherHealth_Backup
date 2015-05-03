class UsersController < ApplicationController

	# This method is for testing and may be subjected to delete
	# in the future
	def index
		@users = User.all
	end

	def create
		@user = User.new(user_params)	
		if @user.save
			redirect_to users_path
		else 
			render 'welcome_page/signup'
		end
	end

	def show
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:username, :email, :password)
		end

end
