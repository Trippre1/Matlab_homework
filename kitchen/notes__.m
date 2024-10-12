% Author Name: Taha Bouhsine
% Email: tahabhs14@gmail.com
% Created On: 09/11/2024
% Updated On: 09/11/2024
% Update By: Taha
% All rights are reserved - MIT License

%a = 10; % int %d decimal
%b = 15;
%c = a/b; %0.6667 is a floating number
%str = 'c is equal to'; % string %s char


%%%%% PART 1

%fprintf("%s: %f",c)

%k = false; % will show 1 when true, 0 wehen false

%fprintf('%d',k);

%round(c, 0)


%%%%%%% PART 2


%potato = 6;

%cnd = potato < 5;
%fprintf('Is potato greater than 5 %d \n', cnd)

%if potato < 5
     %fprintf("you do not have sufficiant potatoes")
%else
  %fprintf("you are all good to cook")
%end

%%% PART 3

%for i = 1
    %fprintf('gimme back my $ %d \n', i)
%end
%cnd = true;
%while cnd
 %   if i > 100
  %      fpritnf(['arlight arlight'])
   %     cnd = false;
    %else
     %   i = i + 1;
      %  display(['no', num2str(i)])
   % end
%end


%%no clue What lines 41-53 do or work. need help with that


%row vector
%vec1 = [1 2 3 4 5];

%vec2 = [3 3 4 3 12];

%vec3 = vec1 + vec2

%vec4 = vec1 - vec2

%%%%% week linear algebra notes

%%% vectors must have the same dimentionality when multiplying or adding

%v1 = [1 2 3 4 5];
%v2 = [3 3 3 3 3];
%v3 = v1/3 + v2

%fprintf("The %d element of the vector is %g \n", 5, v3(5))

%%%matrix - must be same dimention to add or subtract them together/appart

mat1 = [3 2; 2 2]; %2x2
mat2 = [13 -1 3; 2 -2 3;]; %2x3

mat3 = mat1*mat2;

mat1(2, 2)

fprintf("%g ", mat3= mat1*mat2)