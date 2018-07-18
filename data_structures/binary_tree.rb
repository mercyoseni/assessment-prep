class BinaryTree
  attr_accessor :value, :left_child, :right_child

  # initialize binary tree
  def initialize(value)
    @value = value
    @left_child = nil
    @right_child = nil
  end

  # insert node to the left of the tree
  def insert_left(value)
    if self.left_child.nil?
      self.left_child = BinaryTree.new(value)
    else
      new_node = BinaryTree.new(value)
      new_node.left_child = self.left_child
      self.left_child = new_node
    end
  end

  # insert node to the right of the tree
  def insert_right(value)
    if self.right_child.nil?
      self.right_child = BinaryTree.new(value)
    else
      new_node = BinaryTree.new(value)
      new_node.right_child = self.right_child
      self.right_child = new_node
    end
  end

  # tree traversals DFS - Root, Left, Right
  def pre_order
    puts self.value

    self.left_child.pre_order if self.left_child
    self.right_child.pre_order if self.right_child
  end

  # tree traversals DFS - Left, Root, Right
  def in_order
    self.left_child.in_order if self.left_child
    puts self.value
    self.right_child.in_order if self.right_child
  end

  # tree traversals DFS - Left, Right, Root
  def post_order
    self.left_child.post_order if self.left_child
    self.right_child.post_order if self.right_child
    puts self.value
  end

  # BFS algorithm
  def breadth_first_search
    queue = Queue.new
    queue.push(self)

    while not queue.empty?
      current_node = queue.pop
      puts(current_node.value)

      queue.push(current_node.left_child) if current_node.left_child

      queue.push(current_node.right_child) if current_node.right_child
    end
  end
end

root_node = BinaryTree.new('a')
root_node.insert_left('b')
root_node.insert_right('c')

left_child_of_root_node = root_node.left_child
left_child_of_root_node.insert_right('d')

right_child_of_root_node = root_node.right_child
right_child_of_root_node.insert_left('e')
right_child_of_root_node.insert_right('f')

d_node = left_child_of_root_node.right_child
e_node = right_child_of_root_node.left_child
f_node = right_child_of_root_node.right_child

puts(root_node.value) # a
puts(left_child_of_root_node.value) # b
puts(right_child_of_root_node.value) # c
puts(d_node.value) # d
puts(e_node.value) # e
puts(f_node.value) # f
root_node.pre_order # a b d c e f
root_node.in_order # b d a e c f
root_node.post_order # d b e f c a
root_node.breadth_first_search # a b c d e f
