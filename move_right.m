function [X1] = move_right(X,randbool)
%Purpose: move_right.m takes a state and execute a right move on the board
%Inputs: 
% X - current state
%
%Outputs:
%
% X1 - next state after performing right move and a 2 spawns
% X2 - next state after performing right move and a 4 spawns

%Perform right move

X1   = fliplr(X);
[X1] = move_left(X1,randbool);
X1   = fliplr(X1);

end