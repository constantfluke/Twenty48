function [X1] = move_left(X,randbool)
%Purpose: move_left.m takes a state and execute a left move on the board
%Inputs: 
% X - current state
%
%Outputs:
%
% X1 - next state after performing left move and a 2 spawns
% X2 - next state after performing left move and a 4 spawns

%% Perform left move

%elements of each row    
    
for n = 1:4 %iterate thru each row 

%slide first (drop nonzeros)
X1nonzeros = nonzeros(X(n,:))';
X1zeros = zeros(1,4 - length(X1nonzeros));
X1(n,:) = cat(2,X1nonzeros, X1zeros);


%add first 
for m = 1:3
    if X1(n,m) == X1(n,m+1)
        X1(n,m)   = X1(n,m) + X1(n,m+1);
        X1(n,m+1) = 0;
        
    end    
end

%slide again
X1nonzeros = nonzeros(X1(n,:))';
X1zeros = zeros(1,4 - length(X1nonzeros));
X1(n,:) = cat(2,X1nonzeros, X1zeros);



end

%% Spawn new tile
s = rand;
if s <= .9
   x = 2; 
else
   x = 4;
end


%Random index
if randbool
    idx = randi(nnz(~X1));
    while max(idx==find(X1))

        if idx <= 16
            idx = idx + 1;
        else
            idx = idx - 1;
        end
    
    end

    %only if a move occurs, then add a tile
    if ~isequal(X1,X)
        X1(idx) = x;
    end
end

%If a 2 spawns after moving
%X1(randi(numel(X1))) = 2;

%If a 4 spawns after moving
%X2(randi(numel(X2))) = 4;

end







