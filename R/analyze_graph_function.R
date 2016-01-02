analyze.graph <- function(reference.graph) {
  if(require(igraph)) {

  } else { print("igraph is required")}
  node <- data.frame(Node = unlist(list(V(reference.graph)$name))
                         ,In = unlist(list(degree(reference.graph,mode="in")))
                         ,Out = unlist(list(degree(reference.graph,mode="out")))
                         ,Degree = unlist(list(degree(reference.graph,mode="total")))
                         ,WeightedDegree = unlist(list(graph.strength(reference.graph)))
                         ,EigenCentrality = unlist(list(evcent(reference.graph,weight=rep(1,length(E(reference.graph))))$vector))
                         ,Betweenness = unlist(list(betweenness(reference.graph)))
                         ,PageRank = unlist(list(page.rank(reference.graph)$vector))
                         )
  graph <- data.frame(Nodes = length(V(reference.graph))
                          ,Edges = length(E(reference.graph))
                          ,AverageDegree = mean(node$Degree)
                          ,AverageInDegree = mean(node$In)
                          ,AverageOutDegree = mean(node$Out)
                          ,Density = 2*length(E(reference.graph))/(length(V(reference.graph))*length(V(reference.graph))-length(V(reference.graph)))
                          ,Diameter = diameter(reference.graph)
                          )
  if(is.directed(reference.graph)) { type = 'Directed'} else { type = 'Undirected'}
  if(is.null(E(reference.graph)$weight)) { E(reference.graph)$weight <- rep(1,length(E(reference.graph)))}
  edge <- data.frame (EdgeLabel = get.edgelist(reference.graph)
                          ,Type= type
                          ,Weight = E(reference.graph)$weight)

  names(edge) <- c("Source","Target","Type","Weight")

  gs <- list(Node=node,Edge=edge,Graph=graph)

  return(gs)

}
