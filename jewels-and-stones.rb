def make_jewels_hash(jewels_string)
    jewels_hash = {}
    jewels_string.split("").each do | jewel_type |
    	jewels_hash[jewel_type] = true
    end
    jewels_hash
end

def num_jewels_in_stones(j, s)
	jewels_hash = make_jewels_hash(j)
	number_of_jewels = 0
	s.split("").each do | item |
		number_of_jewels += 1 if jewels_hash[item]
	end
	number_of_jewels
end

puts 'Yay!' if num_jewels_in_stones("aA", "aAAbbbb") == 3
puts 'Yay!' if num_jewels_in_stones("z", "ZZ") == 0
puts 'Yay!' if num_jewels_in_stones("aA", "aAAbbbbAAA") == 6
puts 'Yay!' if num_jewels_in_stones("", "aAAbbbbAAA") == 0
puts 'Yay!' if num_jewels_in_stones("aaaaaa", "") == 0
