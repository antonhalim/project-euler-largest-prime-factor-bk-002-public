class LargestPrimeFactor
	attr_reader :num
	def initialize(num)
		@num = num
	end

	def number
		result = []
		increment = 2
		until result.inject(:*) == num do
			if Prime.prime?(increment)
				if num % increment == 0
					result << increment
				end
			end
			increment += 1
			if !result.empty?
				break if result.last* 1000 < increment
			end
		end
		result.last
	end

end
