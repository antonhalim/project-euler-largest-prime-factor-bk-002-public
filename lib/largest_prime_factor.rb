def largest_prime_factor(number)
	result = []
	increment = 2
	until result.inject(:*) == number do
		if Prime.prime?(increment)
			if number % increment == 0
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
