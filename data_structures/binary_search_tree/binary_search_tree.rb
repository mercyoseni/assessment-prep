class BinarySearchTree
  attr_accessor :value, :left_child, :right_child

  # initialize tree
  def initialize(value)
    @value = value
    @left_child = nil
    @right_child = nil
  end

  # insert node
  def insert_node(value)
    if value <= self.value and self.left_child
      self.left_child.insert_node(value)
    elsif value <= self.value
      self.left_child = BinarySearchTree.new(value)
    elsif value > self.value and self.right_child
      self.right_child.insert_node(value)
    else
      self.right_child = BinarySearchTree.new(value)
    end
  end

  def search(value)
    if value == self.value
      value
    elsif value < self.value and self.left_child
      self.left_child.search(value)
    elsif value > self.value and self.right_child
      self.right_child.search(value)
    else
      'Not found'
    end
  end

  def delete_node(value, parent)
    # from line 42 - 49 start searching for the node that has the value we are
    # looking for. If the value is smaller than the current node value we go to
    # the left subtree, recursively (if and only if the current node has a
    # left child). If the value is greater, go to the right subtree, recursively.

    if value < self.value and self.left_child
      self.left_child.delete_node(value, self)
    elsif value < self.value
      false
    elsif value > self.value and self.right_child
      self.right_child.delete_node(value, self)
    elsif value > self.value
      false

    # the remove algorithm starts here
    else
      # line 56 - 59 covers the node with no children and it is the left child
      # from its parent. Remove the node by setting the parent’s left child to nil

      if self.left_child.nil? and self.right_child.nil? and
        self == parent.left_child
        parent.left_child = nil
        self.clear_node

      # line 64 - 67 covers the node with just no children and it is the right
      # child from its parent. Remove the node by setting the parent’s right child to nil

      elsif self.left_child.nil? and self.right_child.nil? and
        self.parent.right_child
        parent.right_child = nil
        self.clear_node

      # line 72 - 75 covers the node with just one child (left child) and it is
      # the left child from its parent. Set the parent's left child to the node’s left child (the only child it has)

      elsif self.left_child and self.right_child.nil? and
        self == parent.left_child
        parent.left_child = self.left_child
        self.clear_node

      # line 81 - 84 covers the node with just one child (left child) and it is
      # the right child from its parent. Set the parent's right child to the
      # node’s left child (the only child it has)

      elsif self.left_child and self.right_child.nil? and
        self == parent.right_child
          parent.right_child = self.left_child
          self.clear_node

      # line 90 - 93 covers the node with just one child (right child) and it
      # is the left child from its parent. Set the parent's left child to the
      # node’s right child (the only child it has)

      elsif self.right_child and self.left_child.nil? and
        self == parent.left_child
        parent.left_child = self.right_child
        self.clear_node

      # line 99 - 102 covers the node with just one child (right child) and it
      # is the right child from its parent. Set the parent's right child to
      # the node’s right child (the only child it has)

      elsif self.right_child and self.left_child.nil? and
        self == parent.right_child
        parent.right_child = self.right_child
        self.clear_node

      # line 108 - 111 covers the node with both left and right children, get the
      # node with the smallest value and set it to the current node's value.
      # Then remove the smallest node

      else
        self.value = self.right_child.find_minimum_value
        self.right_child.delete_node(self.value, self)
      end

      # return true if the node is found
      true
    end
  end

  # this set nil value to all three(3) attributes
  def clear_node
    self.value = nil
    self.left_child = nil
    self.right_child = nil
  end

  # this go way down to the left to find the min value
  def find_minimum_value
    if self.left_child
      self.left_child.find_minimum_value
    else
      self.value
    end
  end
end

bst = BinarySearchTree.new(50)
bst.insert_node(80)
bst.insert_node(60)
bst.insert_node(55)
bst.insert_node(40)
puts bst.value
lc = bst.left_child
puts lc&.value
puts lc.left_child&.value
puts lc.right_child&.value
rc = bst.right_child
puts rc&.value
puts rc.left_child&.value
puts rc.right_child&.value
puts bst.delete_node(80, nil)
puts bst.search(80)
