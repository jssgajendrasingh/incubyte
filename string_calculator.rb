class StringCalculator
	
	def initialize(string)
		@string = string
	end

	# scan all decimal number for sum of digites
	def string_number_sum

		# Extract digits from the string
		digits = @string.scan(/\d+/).map(&:to_i)

		# Ignore numbers greater than 1000
		filtered_digits = digits.select { |num| num <= 1000 }

		# Split each number into single characters, convert to digits, and sum them
		sum = filtered_digits.flat_map { |num| num.to_s.chars.map(&:to_i) }.sum

		puts "StringCalculator Result = #{sum}"
	end
end

str_cal = StringCalculator.new("''")
str_cal.string_number_sum
