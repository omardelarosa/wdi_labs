class Movie

	def length
		@length
	end

	def length=(movie_length)
		@length = movie_length
	end

	def title
		@title
	end

	def title=(movie_title)
		@title = movie_title
	end

	def rating
		@rating
	end

	def rating=(movie_rating)
		@rating = movie_rating
	end

	def play
		puts "Now playing #{@title}"
	end

end

