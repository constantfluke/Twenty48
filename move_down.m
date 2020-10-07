function [X1] = move_down(X,randbool)
%Purpose: move_up.m takes a state and execute a down move on the board
%Inputs: 
% X - current state
%
%Outputs:
%
% X1 - next state after performing down move and a 2 spawns
% X2 - next state after performing down move and a 4 spawns

%Perform up move

X1  = rot90(X,3);
X = move_left(X1,randbool);
X1  = rot90(X); %clockwise 90 deg

end