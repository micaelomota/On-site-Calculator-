require_relative 'RPNCalculator'

calculator = RPNCalculator.new

while input = gets do

	input = input.chomp

	if input == "q" 
		exit
	end

	input = input.split(' ');

	input.each { |c| 
		case c 
			when '+'
				calculator.add();

			when '-'
				calculator.subtract();

			when '*'
				calculator.multiply();

			when '/'
				calculator.divide();

			else 
				calculator.insertOperand = c.to_f
		end
	}

	puts calculator.getResult()
end