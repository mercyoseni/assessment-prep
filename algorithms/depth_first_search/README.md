## Depth-First Search (DFS)
It’s an algorithm for traversing or searching tree data structure. DFS explores a path all the way to a leaf before backtracking and exploring another path. It visits the grand-children(all the way down) of a particular child node before backtracking.

### There are three(3) ways to traverse a tree using DFS:
- **Pre-order(Root, Left, Right):**
    - Algorithm Pre-order(tree):
        - Visit the root
        - Traverse the left subtree, i.e., call Preorder(left-subtree)
        - Traverse the right subtree, i.e., call Preorder(right-subtree)

   Uses of Preorder: Preorder traversal is used to create a copy of the tree. Preorder traversal is also used to get prefix expression on of an expression tree.

- **In-order(Left, Root, Right):**
    - Algorithm Inorder(tree):
        - Traverse the left subtree, i.e., call Inorder(left-subtree)
        - Visit the root
        - Traverse the right subtree, i.e., call Inorder(right-subtree)

    Uses of Inorder: In case of binary search trees (BST), Inorder traversal gives nodes in non-decreasing order. To get nodes of BST in non-increasing order, a variation of Inorder traversal can be used.

- **Post-order(Left, Right, Root):**
    - Algorithm Post-order(tree):
        - Traverse the left subtree, i.e., call Postorder(left-subtree)
        - Traverse the right subtree, i.e., call Inorder(right-subtree)
        - Visit the root

    Uses of Inorder: Postorder traversal is used to delete the tree. Postorder traversal is also useful to get the postfix expression of an expression tree.
