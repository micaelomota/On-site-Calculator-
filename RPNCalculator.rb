class RPNCalculator

	def initialize()
		@operands = Array.new
	end

	def getResult
		@operands.last
	end

	def insertOperand=(value)
     	@operands.push(value)
   	end

   	def add 
   		if validateOperation
   			@operands.push(@operands.pop + @operands.pop);
   		end
   	end

   	def subtract
   		if validateOperation
   			fix = @operands.pop
   			@operands.push(@operands.pop - fix);
   		end
   	end

   	def multiply
   		if validateOperation
   			@operands.push(@operands.pop * @operands.pop);
   		end
   	end

   	def divide
   		if validateOperation
   			fix = @operands.pop
   			if fix != 0
   				@operands.push(@operands.pop / fix);
   			else
   				puts "It is not possible to divide by zero"
   				@operands = Array.new
   			end
   		end
   	end

	def validateOperation
		return @operands.length > 1
	end

	private :validateOperation
end