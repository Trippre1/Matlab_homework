% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 09/25/2024
% Updated On: 10/11/2024
% Update By: Tripp
fileID = fopen('stock_data.txt','r'); 
stock_prices = fscanf(fileID,'%f', [1 Inf]);% Read stock data from 'stock_data.txt'
fclose(fileID);

average_price = mean(stock_prices);
highest_price = max(stock_prices);% calculating the data
lowest_price = min(stock_prices);
increased_days = sum(diff(stock_prices) > 0);


fprintf('Average closing price: %.2f\n', average_price);
fprintf('Highest closing price: %.2f\n', highest_price);% Display the results
fprintf('Lowest closing price: %.2f\n', lowest_price);
fprintf('Number of days price increased: %d\n', increased_days);


figure;
plot(stock_prices, '-o', 'LineWidth', 1.5);%line plot
hold on;


yline(average_price, 'g--', 'Average Price', 'LineWidth', 1.5);
yline(highest_price, 'r--', 'Highest Price', 'LineWidth', 1.5);% Add horizontal lines for average, highest, and lowest prices
yline(lowest_price, 'b--', 'Lowest Price', 'LineWidth', 1.5);


xlabel('Days');
ylabel('Closing Price');% Add labels and title
title('Daily Closing Prices of the Stock');
legend('Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');
grid on
saveas(gcf, 'stock_analysis.png');

% Write summary to 'stock_summary.txt'
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Analysis Summary\n');
fprintf(fileID, '----------------------\n');
fprintf(fileID, 'Average closing price: %.2f\n', average_price);
fprintf(fileID, 'Highest closing price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest closing price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of days price increased: %d\n', increased_days);
fclose(fileID);
