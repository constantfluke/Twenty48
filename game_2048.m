%% 2048 Game %%

clear all
close all
clc

%%INITIALIZATION
X = [0 0 0 0 ;
     0 0 0 0 ;
     0 0 0 0 ;
     0 0 0 0];
 
randbool = true;

%Generating random 2 or 4 spawn (x2 b/c board begins w/ 2 numbers)
%rng(4)
s1 = rand;
if s1 <= .9
   x = 2; 
else
   x = 4;
end

s2 = rand;
if s2 <= .9
   y = 2; 
else
   y = 4;
end

%Randomly positioning first two numbers
idx_x = randi(numel(X));
X(idx_x) = x;

idx_y = randi(numel(X)-1);
if idx_y == idx_x
    if idx_y < 16
        idx_y = idx_y + 1;
    else
         idx_y = idx_y - 1;
    end
end
X(idx_y) = y;

%Take input from user on board
while true
Board_creation(X)

[~,~,move]=ginput(1);

switch move

    case 28
        [X] = move_left(X,randbool);
        
    case 29
        [X] = move_right(X,randbool);
        
    case 30
        [X] = move_up(X,randbool);
        
    case 31
        [X] = move_down(X,randbool);
        
    otherwise
        fprintf('Error, no such shape is found! Try again!\n')
        return
              
end
end