require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'

puts development?
puts production?

get '/' do
	'Hello World'
end

get '/say/:my_name' do
	"Hello, #{params[:my_name]}"
end

get '/name/:first/:last' do
	"your name is : #{params[:first]} #{params[:last]}"
end

get '/name/:first/:last/:age' do
	"your name is #{params[:first]} #{params[:last]} and you are #{params[:age]} years old"
end

get '/check_params/' do
	"Params is #{params.class}"
end

get '/first_page/:your_name' do
	@your_name = params[:your_name]
	erb :first_page
end