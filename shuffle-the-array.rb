def shuffle(nums, n)
    output = []
    (0..(n-1)).each do | val |
    	output << nums[val]
    	output << nums[val	+ n]
    end
    output
end
