def decompress_rl_elist(nums)
    output = []
    mode = :freq
    current_freq = nil
    nums.each do | num |
    	if mode == :freq
    		current_freq = num
    		mode = :expansion
    	else
    		current_freq.times do
    			output << num
    		end
    		mode = :freq
    	end
    end
    output
end
