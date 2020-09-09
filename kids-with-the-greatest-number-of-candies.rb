def kids_with_candies(candies, extra_candies)
    greatest_number_of_candies = candies.max
    return candies.map do | number_of_candies_this_kid_has |
    	if number_of_candies_this_kid_has + extra_candies >= greatest_number_of_candies
    		true
    	else
    		false
    	end
    end
end
