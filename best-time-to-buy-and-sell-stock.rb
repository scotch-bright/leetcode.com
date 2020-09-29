def max_profit(prices)
    
	return 0 if prices.size == 0

	min_till_now = prices[0]
	max_after_that = prices[0]
	best_profit = max_after_that - min_till_now

	prices.each do | price |

		new_min = [min_till_now, price].min

		if new_min < min_till_now
		
			min_till_now = new_min
			max_after_that = new_min
		
		else
		
			max_after_that = [max_after_that, price].max
		
		end

		best_profit = [best_profit, (max_after_that - min_till_now)].max

		#puts "min_till_now: #{min_till_now}, max_after_that: #{max_after_that}, best_profit: #{best_profit}"

	end

	best_profit

end
