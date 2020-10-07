function [X1] = move_up(X,randbool)
%Purpose: move_up.m takes a state and execute an up move on the board
%Inputs: 
% X - current state
%
%Outputs:
%
% X1 - next state after performing up move and a 2 spawns
% X2 - next state after performing up move and a 4 spawns

%Perform up move

X1   = rot90(X); %clockwise 90 deg
X1 = move_left(X1,randbool);
X1  = rot90(X1,3);

end