message = "miss";
a_m = double(message);
shift = 2;

a_m = a_m + 122-97 %adding the range of characters: 26 letters
a_m = a_m + shift -26;
fprintf('%s', a_m)

for i = 1:length(message)
if a_m(i) >= 122
    a_m(i) = a_m(i) - 26;
else a_m(i) < 97
    a_m(i) = a_m(i) +122;
end
end
fprintf("%s", a_m(i));
