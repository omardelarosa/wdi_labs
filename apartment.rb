class Building

end

class Aparment

end

class Resident
	attr_accessor :name, :age, :nationality

	def initialize(name, age, nationality)
		@name = name
		@age = age
		@nationality = nationality
	end

end