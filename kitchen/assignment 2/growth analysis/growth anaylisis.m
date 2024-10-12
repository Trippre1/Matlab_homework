% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 09/25/2024
% Updated On: 09/25/2024
% Update By: Tripp


%%% question 1
population = [5000, 5200, 5350, 5600, 5800];

%calculating growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1)*100;

% combining vectors into matrix
pop_data = [population; [0 growth_rate]];

year = [1787, 1788, 1789, 1790, 1791];

% Print table header and divider
fprintf("Population        Growth Rate %s \n", '(%)');
fprintf('-----------    -----------------\n');

% Printing the matrix into the columns
for i = 1:length(year)
    fprintf('%d              %.2f\n', pop_data(1,i), pop_data(2, i));
end