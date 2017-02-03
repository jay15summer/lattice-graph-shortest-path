# lattice-graph-shortest-path
## Description
<pre>The program solves the shortest-path problem for a 2D lattice graph (grid graph)
which can be represented in a matrix format. 
For example, a 4-by-4 lattice graph can be represented by a 4-by-4 matrix. 
(One entry corresponds to one grid point of the lattice graph).
At every grid point, one can travel to its up/down/left/right side grid point.
The arc-length (weight) between neightboring grids is calculated by a function
of corresponding entries' values in the matrix.
Assume the matrix is:  
Matrix = [1 4 7 6;
          6 5 4 3;
          1 5 2 2;
          1 4 6 1]. 
Also assume the traveling cost from entry i to entry j is only determined 
by the entry value j,(e.g., weight function is wf = @(i,j)(0.*i + 1.*j)). 
We can quickly find out that the shortest-path traveling from node(1,1) to
node(4,4) is (1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4), the
total traveling distance is 6+1+5+2+2+1=17.
The above type of problem can be solved by this program conveniently.
See the following result:  
Path = [1     4     7     6;
        |
        V
        6     5     4     3;
        |
        V
        1 --> 5 --> 2 --> 2;
                          |
                          V
        1     4     6     1]. 

Other more complex lattice-graph-shortest-path problems can also be solved by this program. </pre>
## Installation
Download and add 'gridmatrixshortestpath.m' and 'main.m' to your path (folder). 
## Usage
1. 'gridmatrixshortestpath.m': <br />
   a matlab function to solve shortest-path problems for lattice grids in a matrix format. <br />
<pre>Input: 
      GridMatrix: A matrix representing the lattice graph (m-by-n)
      wf:         Weight fucntion to calculate the arc length traveling
                  between neighboring grids
      start/stop: the indexes of start and target grid points
                  e.g.,start = [1 2](p-by-2); stop = [7 9](p-by-2)
--------------------------------------------------------------------------
Output:
     dist:     the shortet distance between start and stop (p-by-1)
     pos_in_M: the shortest-path (q-by-2-by-p)</pre>

2. 'main.m': <br />
   an example/demo of how to implement gridmatrixshortestpath.m. 

