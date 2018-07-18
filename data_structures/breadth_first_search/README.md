## Breadth-First Search (BFS)
This algorithm traverses the tree level by level, depth by depth. It’s also known as level-order traversal.

### Pseudocode
- First, add the root node into the queue with the `push` method
- Iterate while the queue is not empty
- Get the first node in the queue using `pop` and print its value
- Add both left and right children into the queue (if the current node has children)
- Print each node‘s value level by level
