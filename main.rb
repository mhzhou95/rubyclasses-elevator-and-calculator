# PART 1 Calculator start method startCalculator to go!

class Calculator
	def initialize(num1, num2)
		@num1 =num1
		@num2 =num2
	end

	def add
		sum = @num1 + @num2
		puts sum
	end

	def subtract
		sum = @num1-@num2
		p sum
	end

	def multiply
		sum = @num1*@num2
		p sum 
	end

	def divide
		sum = @num1/(@num2)
		p sum
	end
end

def startCalculator
	p "enter first number"
	@num1 = gets.chomp.to_f
	p "enter second number"
	@num2 = gets.chomp.to_f

	p "do you want to add, subtract, multiply, or divide?"
	whatdo = gets.chomp

	calc = Calculator.new(@num1, @num2)

	if whatdo == "add"
		calc.add
	elsif whatdo =="subtract"
			calc.subtract
		elsif whatdo == "multiply"
				calc.multiply
			elsif whatdo == "divide"
				calc.divide
	end
end


# PART 2 ELEVATOR start method runElevator to go!



class Elevator
	attr_reader :floor
	def initialize(floor)
		@floor = floor
	end

	def go_up
		if @floor != 12
			@floor +=1
		else
			p "you cant go any higher"
		end
	end

	def go_down
		if @floor != 0
			@floor -= 1
		else 
			p "you are already on the lowest floor"
		end
	end

	def cheery_greeting
		p "You are currently on the floor #{floor}"
	end
end

def runElevator
	@currentFloor = 0
	ride = Elevator.new(@currentFloor)
	@userinput
	while @userinput != "end"
		p "type up to go up, down to go down, end to get off"
		@userinput = gets.chomp
		if @userinput == "up"
			ride.go_up 
			p ride.cheery_greeting
		elsif @userinput == "down"
		ride.go_down
			p ride.cheery_greeting
		elsif @userinput == "end"
			p "You decide to get off at floor #{ride.floor}"
		end
	end

end

puts runElevator