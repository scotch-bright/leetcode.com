def subtract_product_and_sum(n)
	array_of_numbers = n.to_s.split("").map { |number| number.to_i }
    product = array_of_numbers.reduce(1, :*) 
    sum = array_of_numbers.reduce(:+)
    product - sum
end
