class WelcomeController < ApplicationController
	def index
		render :text => 'Hello World.'	#'render' directive is the same as 'erb' directive
		#render nothing: true, status: 200 # helpful for crafting responses
	end
end