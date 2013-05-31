require 'pry'
require 'sinatra'
require 'sinatra/reloader'


get '/calc/:first/:second' do 
	puts params.class
	puts params
	puts @first = params[:first].to_f
	puts @second = params[:second].to_f
end

get '/calc' do

	@first = params[:first_number].to_f
	@second = params[:second_number].to_f

	case params[:operator]
	when "-"
		@result = (@first - @second).to_s
	when "+"
		@result = (@first + @second).to_s
	when "x"
		@result = (@first * @second).to_s
	when "*"
		@result = (@first * @second).to_s
	when "/"
		@result = (@first / @second).to_s
	else
		@result = (@first / @second).to_s
	end

	erb :calc
end