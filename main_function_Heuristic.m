% parameters

lambda_l = 0;
price = 125;
holding_cost = 3;
lambda_h = price;
lambda = price/2;
epsilon = 0.1;

% Data Generation

% param 1 - N(5, 2)
% param 2 - N(5, 0.5)
% param 3 - N(5, 7)

time_periods = 4;
num_retailers = 3;
parameters = [[5,2]; [5,0.5]; [5,7];];
bounds = [0,10];
rho = 0.6;
noise_bounds = [1,-1];

data = generate(time_periods, num_retailers, parameters, bounds, rho, noise_bounds);

plot_data(data);

probability_matrix = ones(num_retailers, time_periods+1, 10);

% Generating the probability matrix assuming AR(1) model
% Generating probabilities for T1.
c = [];
var_er = [];
for i = 1: num_retailers
    c(i) = parameters(i,1)*(1-rho);
    var_er(i) = parameters(i,2)*(1-rho^2);
end

for t= 1:time_periods
    for demands = 1:10
        for ret = 1:num_retailers
            mu = parameters(ret, 1);
            sig = parameters(ret, 2);
            if t == 1
                probability_matrix(ret, 1, demands) = normpdf(demands, mu, sig);
            else
                val = 0;
                for prev_d = 1:10
                    curr_ep = demands - c(ret) - rho*prev_d;
                    val = val + probability_matrix(ret, t-1, prev_d) * normpdf(curr_ep, 0, var_er(ret));
                end
                probability_matrix(ret, t, demands) = val;
            end
            
        end
    end
end


retailer_inventory = zeros(1, num_retailers);
while (lambda_h - lambda_l < epsilon)
    
    % Calculating the expected values
    for t = time_periods:-1:1
        for ret = 1:num_retailers
            demand_intervals = [1:10];
            expected_cost = 0;
            expected_al = inf;
            retailer_al = zeros(num_retailers, time_periods);
            for al = 1:10
                temp = 0;
                for j = 1:10
                    prob = probabilty_matrix(ret, t, demand_intervals(j);
                    if t ==  time_periods
                        cost = cost_fun(price, price, demand_intervals(j),...
                            0, al);
                    else
                        cost = cost_fun(price, holding_cost, demand_intervals(j),...
                            retailer_inventory, allocation);
                    end
                    temp = temp + prob*cost;
                end
                if (temp < expected_al)
                    expected_cost = temp;
                    expect_al = al;
                end
            end
        end
    end    
end

