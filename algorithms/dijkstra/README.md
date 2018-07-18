## Dijkstra’s Algorithm
Dijkstra’s algorithm is used to determine the shortest path from one node in (any edge-weighted) graph to every other node within the same graph, provided that the nodes are reachable from the starting node. A weighted graph is a graph whose edges have some value associated with them, the edges are also called weights. It also the distance between two(2) nodes.
This algorithm will continue to run until all of the reachable vertices in a graph have been visited, which means that we could run Dijkstra’s algorithm, find the shortest path between any two reachable nodes, and then save the results somewhere.
Dijkstra’s algorithm is really only a modified breadth-first search. Breadth-first search (BFS) is a graph traversal algorithm which works by exploring all neighboring nodes first, before moving on to the next level of neighbors (neighbors’ neighbors).

### Rules for running Dijkstra’s algorithm
- From the starting node, visit the vertex with the smallest known distance/cost
- Once we’ve moved to the smallest-cost vertex, check each of its neighboring nodes
- Calculate the distance/cost for the neighboring nodes by summing the cost of the edges leading from the start vertex
- If the distance/cost to a vertex we are checking is less than a known distance, update the shortest distance for that vertex

The most common example of Dijkstra’s algorithm in the wild is in path-finding problems, like determining directions or finding a route on Google Maps.
