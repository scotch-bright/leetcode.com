def number_of_steps (num)
    counter = 0
    current_number = num
    while current_number > 0 do
    	if current_number % 2 == 0
    		current_number = current_number / 2
    		counter += 1
    	else
    		current_number = current_number - 1
    		counter += 1
    	end
    end
    counter
end
