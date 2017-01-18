# lattice-grids-shortest-path
1. gridmatrixshortestpath.m: 
   a matlab function to solve shortest-path problems for lattice grids in a matrix format
2. main.m:
   an example of how to implement gridmatrixshortestpath.m
%The program solves the shortest-path problem for a 2D lattice grids
%which can be represented by a matrix. For example, a 4-by-4 lattice grids
%can be represented by a 4-by-4 matrix. (One entry corresponds to one grid point)
%At every grid point, one can travel
%to its up/down/left/right side grid point, the arc-length (weight) between
%the neightboring grids is calculated by a function of the entry values in 
%the corresponding matrix.
%Assume the matrix is 
%Matrix = [1 4 7 6;
%          6 5 4 3;
%          1 5 2 2;
%          1 4 6 1]; 
%Also assume the traveling cost from entry i to entry i is only determined 
%by the entry value j,(i.e. weight function is wf = @(i,j)(0.*i + 1.*j)). 
%We can easily find out that the shortest-path traveling from node(1,1) to
%node(4,4) is (1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4), the
%total distance is 6+1+5+2+2+1=17. (validated in Main.m). 
%The figure result is consistent with the path:
%(1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4). 
%%Matrix1 = [1    4    7    6;
%            |
%            v
%            6    5    4    3;
%            |
%            v
%            1 -- 5 -- 2 -- 2;
%                           |
%                           |
%            1    4    6    1];
%
%This kind of problems can be solved by this function. 
%--------------------------------------------------------------------------

