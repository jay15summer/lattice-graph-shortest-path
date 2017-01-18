# lattice-grids-shortest-path

1. gridmatrixshortestpath.m: <br />
   a matlab function to solve shortest-path problems for lattice grids in a matrix format
2. main.m: <br />
   an example of how to implement gridmatrixshortestpath.m
3. Description:<br />
The program solves the shortest-path problem for a 2D lattice grids which can be represented by a matrix.<br />
For example, a 4-by-4 lattice grids can be represented by a 4-by-4 matrix. (One entry corresponds to one grid point).<br />
At every grid point, one can travel to its up/down/left/right side grid point, the arc-length (weight) between<br />
the neightboring grids is calculated by a function of the entry values in the corresponding matrix.<br />
Assume the matrix is <br />
Matrix = [1 4 7 6;<br />
<pre><pre>          6 5 4 3;<br />
          1 5 2 2;<br />
          1 4 6 1];<br />
Also assume the traveling cost from entry i to entry i is only determined 
by the entry value j,(i.e. weight function is wf = @(i,j)(0.*i + 1.*j)). 
We can easily find out that the shortest-path traveling from node(1,1) to
node(4,4) is (1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4), the
total distance is 6+1+5+2+2+1=17. (validated in Main.m). 
The figure result is consistent with the path:
(1,1)-->(2,1)-->(3,1)-->(3,2)-->(3,3)-->(3,4)-->(4,4). 
Matrix1 = [1    4    7    6;
            |
            v
            6    5    4    3;
            |
            v
            1 -- 5 -- 2 -- 2;
                           |
                           |
            1    4    6    1];

This kind of problems can be solved by this function. 
## Installation
TODO: Describe the installation process
## Usage
TODO: Write usage instructions
## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D
## History
TODO: Write history
## Credits
TODO: Write credits
## License
TODO: Write license
1. gridmatrixshortestpath.m: 
   a matlab function to solve shortest-path problems for lattice grids in a matrix format
2. main.m:
   an example of how to implement gridmatrixshortestpath.m


%--------------------------------------------------------------------------

