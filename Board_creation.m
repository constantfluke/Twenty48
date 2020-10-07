function Board_creation(X)
%Creates the 4x4 board in a window and plots the current state


%Board setup
nrows = 4;                  
ncols = 4;                  
XL = [0 nrows];
YL = [0 ncols];
rowx = repmat([0:ncols], 2, 1);
rowy = [min(XL)*ones(1, ncols+1); max(XL)*ones(1, ncols+1)];
colx = [min(YL)*ones(1, nrows+1); max(YL)*ones(1, nrows+1)];
coly = repmat([0:nrows], 2, 1);
figure(1)
plot(rowx, rowy, 'black')
hold on
plot(colx, coly, 'black')
axis equal tight
axis off
title('2 0 4 8')

%Plotting current state
xt = [0.5 1.5 2.5 3.5];

yt1 = [3.5 3.5 3.5 3.5];
yt2 = [2.5 2.5 2.5 2.5];
yt3 = [1.5 1.5 1.5 1.5];
yt4 = [0.5 0.5 0.5 0.5];

delete(findobj('Type', 'Text'))

for i = 1:4
    for j = 1:4
        if X(i,j)~=0
            text(j-0.5,4.5-i,{X(i,j)},'FontSize',24)
        end
    end
end

% text(xt,yt1,{X(1,1) X(1,2) X(1,3) X(1,4)},'FontSize', 24)
% text(xt,yt2,{X(2,1) X(2,2) X(2,3) X(2,4)},'FontSize', 24)
% text(xt,yt3,{X(3,1) X(3,2) X(3,3) X(3,4)},'FontSize', 24)
% text(xt,yt4,{X(4,1) X(4,2) X(4,3) X(4,4)},'FontSize', 24)

end