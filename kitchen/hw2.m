% define how many dishes a meal takes
% Asking user for input
vegetables = input('Enter the number of vegetables:');
% water = input('Enter the amount of water (in liters): ');

% Simple calculation for total ingredients
totalIngredients = vegetables;

% Calculate cooking time (example formula: time = 10 minutes per ingredient)
cookTime = totalIngredients * 10 ;

% Display the result
disp(['Total cooking time is ', num2str(cookTime), ' minutes.']);

% Check if cooking time is more than 60 minutes
if cookTime > 60
    disp('Tajine will take a long time to cook!');
else
    disp('Tajine will be ready soon!');
end
dish = vegetables/10;
dishes = round(dish, 0);
fprintf(" %f dishes", dishes);
Team Charter Draft + research