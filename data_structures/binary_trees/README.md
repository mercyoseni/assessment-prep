## Binary Tree
Binary tree is a tree data structure in which each node has at most two(2) children, which are referred to the left child and the right child. It’s a collection of nodes, and each node has a value, left_child and right_child.

### Steps/Rules to insert nodes to the tree:
- If the current node doesn’t have a left child, create a new node and set it to the current node’s left_child.
- If it does have the left child, create a new node and put it in the current left_child’s place. Allocate the left child node to the new node’s left child.
- Same applies to inserting a right_child node
