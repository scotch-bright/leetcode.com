def running_sum(nums)
	current_sum = 0
	output = []
	nums.each do | number |
		current_sum = current_sum + number
		output << current_sum
	end
	output
end
