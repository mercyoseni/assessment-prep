## Binary Search Tree
It is sometimes called ordered or sorted binary trees, it is a node-based binary tree data structure which has the following properties:
- The left subtree of a node contains only nodes with keys/values lesser than the node’s key
- The right subtree of a node contains only nodes with keys/values greater than the node’s key
- The left and right subtree must also be a binary search tree
- There must be no duplicate nodes

The properties provides ordering among keys so that operations like search, minimum and maximum can be done quickly and effectively.

### Insertion: Adding new nodes to the tree
- Is the new node value greater or smaller than the current node?
- If the new node value smaller than the current node, go to the left subtree. If the current node doesn’t have a left child insert it there. Else backtrack to the first step
- If the new node value greater than the current node, go to the right subtree. If the current node doesn’t have a right child, insert it there. Else backtrack to the first step

### Searching a key:
- First compare the key with the root, if the key is present at root, return root
- If key is greater than root’s key, recur for right subtree of root node, otherwise we recur for left subtree
- Else “Not found”

### Deleting a node:
This involves removing and organizing nodes. It’s a more complex algorithms because we need to handle different scenarios:
- When the node to be deleted is leaf (a node with no children);  simply remove the node from the tree
- When the node to be deleted has only one child; copy the child to the node and delete the child
- When the node to be deleted has two children; find the node with the minimum value starting from the node‘s right child. Put the node with minimum value in the place of the node that is to be removed
