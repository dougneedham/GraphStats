# GraphStats

## Produce summary statistics in data frames for igraph networks


Calling analyze.graph(graph) will return a list of data frames: 

- Node
- Edge
- Graph 

The data frame structure for node is: 


|Node| In| Out| Degree| WeightedDegree| EigenCentrality |Betweenness |PageRank|
|----| --| ---| ------| -------------- |---------------| ----------- |--------|
|   1|  0|   1 |     1 |             1|     0.007372396|    0.000000| 0.004003801|

|Node| In| Out     |Degree|WeightedDegree| EigenCentrality |Betweenness |PageRank|
|------| -- |----- |------| -------------- |---------------| ----------- |--------|
|1      |0 |1 |1|             1|     0.007372396|    0.000000| 0.004003801|
- Node is the name of the node.
- In is the in-degree, or number of incoming connections. (Number of nodes connected to this node)
- Out is the out-degree, or number of outgoing connections. (Number this node is connected to)
- Degree is the total number of connections this node has both in and out. 
- EigenCentrality This number is the Eigenvector Centrality of this node ( https://en.wikipedia.org/wiki/Centrality#Eigenvector_centrality )
- Betweenness This is the number of shortest paths that go through this node. 
- PageRank This is the pagerank score of this particular node (https://en.wikipedia.org/wiki/PageRank)


|Source| Target| Type     |Weight|
|------| ------ |-------- |-----|
|1      |0 |Directed |1|

- Source is the source node
- Target is the target node
- Type is wether this is a directed or undirected edge (For the moment it defaults to the type of graph this is)
- Weight weight of the individual edge

     
Nodes Edges AverageDegree Density    Diameter
----- ----- ------------- ---------- --------
   77   254     6.597403  0.08680793        5

- Nodes is the number of nodes in the graph
- Edges is the number of edges in the graph
- AverageDegree is the mean of all degrees in the graph
- Diameter is the length of the longest geodesic


## Examples
LesMis <- graph.data.frame(Gephi.LesMiserables)

lm <- analyze.graph(LesMis)
