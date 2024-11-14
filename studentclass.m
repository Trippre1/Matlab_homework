% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 11/11/2024
% Updated On: 11/12/2024
% Update By: Tripp
% Assignment: Midterm


function res = studentclass()
    user_data.user_id = input("What is your ID?", 's');
    user_data.user_name = input("What is your full name?", 's');
    user_data.user_age = input("What is your age?", 'n');
    user_data.user_gpa = input("What is your GPA?", 'n');
    user_data.user_major = input("What is your major?", 's');

    res = user_data;%user who
end 
