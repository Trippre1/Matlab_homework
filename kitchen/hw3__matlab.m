% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 09/25/2024
% Updated On: 09/25/2024
% Update By: Tripp
% All rights are reserved - MIT License



%%%variabe operations
radius = 5; % set variabl
area = radius^2 *(3.141); %variable equation
circumference = 2 * radius * (3.141); %variable equation

fprintf('Area: %g ft^2 \n', area); %used /n to force next next script into next line for smoother reading
fprintf('Circumference: %g ft \n', circumference); %used %g because other format specifiers gave more zeros that were ugly to look at


%%% temperature converter

celsius = input('Enter the temperature in Celsius: '); %pompt the user to enter a temperature in celsius
farenheit = (celsius * 9/5) + 32; %convert temperature to farenheit

fprintf('The temperature in Farenheit is: %.2f °f \n', farenheit); %display the result with 2 decimal points!! learned how to do it :)

if farenheit > 100
    disp('It''s a hot day!');  % Check if the temperature in farenheit is above 100°F
end


%%% Grocieries list calculator

apple = 1.95;
kiwi = 2.65;
goldfish = 7.99;%setting the variables
milk = 4.79;
batteries = 12.99;

apple_qty = input('How many apples do you want to buy? ');
kiwi_qty = input('How many kiwis do you want to buy? ');
goldfish_qty = input('How many boxes of golfish do you want to buy? '); %input variable amounts to be calculated into the shopping list
milk_qty = input('How many quarts of milk do you want to buy? ');
batteries_qty = input('How many 10 packs of batteries do you want to buy? ');

total_cost = (apple_qty * apple) + (kiwi_qty * kiwi) + (goldfish *goldfish_qty) + (milk * milk_qty) + (batteries*batteries_qty); %most tedious way to add variables, but it works with a lot of perenthesies 


if total_cost > 50
    discount = total_cost *0.9; %calculating weather we get the discount
else
    discount = 0;
end


if discount> 0
    fprintf('total cost: $%.2f with a discount :) \n', discount); %figured i could put the dollar sign in from of the signifyer to make it work well. 
else
    fprintf('total cost: $%.2f \n', total_cost);
end


%%% random number generator

target = randi([1, 100], 1);

Correct = false;
while ~Correct

guess = input('Guess a number between 1 and 100: ');

if guess < target
        fprintf('Too low! Try again.\n');
    elseif guess > target
        fprintf('Too high! Try again.\n');
    else
        fprintf('Correct! You guessed the number.\n');
        Correct = true;
end
end
