% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));


% Calculate average temperature, humidity, and total precipitation
avg_temp = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);

% Write these statistics to 'weather_summary.txt'
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, 'Average Temperature: %.2f\n', avg_temp);
fprintf(fileID, 'Average Humidity: %.2f\n', avg_humidity);
fprintf(fileID, 'Total Precipitation: %.2f\n', total_precipitation);
fclose(fileID);
