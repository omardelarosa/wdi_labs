var calc = {}

calc.menu = ""

calc.add = function(first,second) {
	var sum = first + second
	print(sum)
}

while menu != "q" {

	print("What do you want to do? Quit or Add")
	menu = readline()

	if menu === "a" {
		print("What is the first number?");
		var first = readline()
		print("What is the second number?");
		var second = readline()

		calc.add(first,second)
	}

}