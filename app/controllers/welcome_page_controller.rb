class WelcomePageController < ApplicationController

	def index
	end

	def signup
		@user = User.new
	end
	
end
