class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id]) 
		#populates the instance variable that is accessible by the template file
		#convention expects the view to be in views/users/
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		@user.save!
	end
end