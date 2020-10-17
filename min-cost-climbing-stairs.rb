def min_cost_climbing_stairs(cost)
	min_cost = 0

	cost_including_last_element = cost[0]
	cost_not_including_last_element = 0
	min_cost = [ cost_including_last_element, cost_not_including_last_element ].min

	(1..(cost.length - 1)).each do | idx |

		cost_not_including_last_element = cost_including_last_element
		cost_including_last_element = min_cost + cost[idx]

		min_cost = [ cost_including_last_element, cost_not_including_last_element ].min

	end

	min_cost
end
