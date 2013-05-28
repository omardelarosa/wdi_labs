require 'httparty'
require 'json'

movie = HTTParty.get('http://www.omdbapi.com/?t=Babe')

json_movie = JSON(babe)

option = ""

while option != "q"

	case option

	when "search"
		
	print "What do you want to know about the movie?"

	if option == "q"
		break
	end
end