function data = generate(time_periods, num_retailers, parameters, bounds, rho, noise_bounds)

% time_periods - The time periods till which the data is to be generated.
% num_retailers - Denotes the number of retailers for which the data is to
% be generated.
% parameters - Include the mean and variance of the data for each retailer
% demand.
% bounds - Represent the bound which the demand distribution follows.
% rho - This is the slope of the AR(1) model, also the lag 1 parameter.
% noise_bounds - The tight bound for the noise (epsilon) parameter.

T = 0;

data = [];

for i = 1:time_periods
    for j = 1:num_retailers
        data(j,i) = 0;
    end
end

while (T < time_periods)
    
    for i = 1: num_retailers

        val = parameters(i, 2)*randn() + parameters(i,1);
        noise = min(noise_bounds(2),max(noise_bounds(1),randn()));
        val = val+noise;
        if T
            time_lag = (data(i, T)-parameters(i,1))*rho;
        else
            time_lag = 0;
        end
        data(i,T+1) = min(bounds(2),max(bounds(1),val)) + time_lag;
        
    end
    
    T = T + 1;
end