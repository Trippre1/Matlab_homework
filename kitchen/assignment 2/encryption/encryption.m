% Author Name: Tripp McEvoy
% Email: mcevoy42@rowan.edu
% Created On: 09/25/2024
% Updated On: 10/11/2024
% Update By: Tripp

function em = caesar_cipher(message,shift) %caesar cipher function 

em = '';
    for i = 1:length(message)

       if isletter(message(i))
         shifted_character = mod((message(i) - 'a') + shift , 26) + 'a';
         em = [em, char(shifted_character)]; %shift the character by the given shift value       
       else
          em = [em,message(i)];
       end
    end
end %of function 

% prompt the user for the message to encrypt 
message = input('Encryption :) lowercase  only','s');

shift = input ('enter # (1-25)');
em = caesar_cipher(message,shift);

fprintf(' Original message: %s\n',message);


fprintf('Encrypted message: %s\n', em);% display encripted message 