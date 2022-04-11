function value = cost_fun(price, holding_parameter, demand, inventory_pos, allocation)

value = 0;
lost_sales = price*max(demand - inventory_pos - allocation, 0);
holding_cost = holding_parameter*max(0, inventory_pos + allocation - demand);

value = lost_sales + holding_cost;