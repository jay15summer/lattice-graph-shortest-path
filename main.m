%main and demo
%Here is an example of how to use the gridmatrixshortestpath.m
clear; close all; 
%% 1. Assume a lattice grids (Matrix)
Matrix1 = [1 4 7 6;
           6 5 4 3;
           1 5 2 2;
           1 4 6 1];
%% 2. Specify a weight function
wf1 = @(rt, op)(0.*rt + 1.*op); % the weight is determined by the second (latter) grid points
%% 3. Specify start and stop grid points
start = [1 1]; stop = [4 4]; 

%% 4. Calling for gridmatrixshortestpath.m
[dist1, path1] = gridmatrixshortestpath(Matrix1, start, stop, wf1);

%% 5. Plotting a figure (optional)
figure;
[x,y] = meshgrid(1:size(Matrix1,1),1:size(Matrix1,2));
mesh(x, y, zeros(size(Matrix1,1),size(Matrix1,2))); 
view(0,90); set(gca,'ytick',0:size(Matrix1,1),'xtick',0:size(Matrix1,2));hold on;
%================
pathresult1 = path1.path;
tmp = pathresult1(:,1); 
pathresult1(:,1) = pathresult1(:,2);
pathresult1(:,2) = size(Matrix1, 1)-tmp+1;%convert position in matrix to position in graph.
%================
for i = 1:(size(pathresult1,1)-1)
    p1 = pathresult1(i, :);
    p2 = pathresult1(i+1, :);
    dp = p2-p1;
    p = quiver(p1(1),p1(2),dp(1),dp(2),0);
    set(p, 'LineWidth', 1); 
end
%The figure result is consistent with the path:
%(1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4). 
%%Matrix1 = [1    4    7    6;
%            |
%            |
%            6    5    4    3;
%            |
%            |
%            1 -- 5 -- 2 -- 2;
%                           |
%                           |
%            1    4    6    1];
%
