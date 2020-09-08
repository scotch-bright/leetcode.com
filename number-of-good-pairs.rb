def locations_table(nums)
	output = {}
	nums.each_with_index do | item, idx |
		output[item] = output[item].nil? ? [idx] : output[item] << idx 
	end
	output
end

def sum_upto_n(n)
	(n * (n + 1)) / 2
end

def num_identical_pairs(nums)
	total = 0
	locations_table(nums).map do | number, array_of_indexes_found |
		total += sum_upto_n(array_of_indexes_found.size - 1)
	end
	total
end


puts 'Yay!' if num_identical_pairs([1,2,3,1,1,3]) == 4
puts 'Yay!' if num_identical_pairs([1,1,1,1]) == 6
puts 'Yay!' if num_identical_pairs([1,2,3]) == 0
puts 'Yay!' if num_identical_pairs([1]) == 0
puts 'Yay!' if num_identical_pairs([]) == 0
