require_relative 'Node'

class LinkedList
  attr_accessor :node_value, :next_node, :size, :head, :tail, :at, :contains, :find, :to_s

  def node_value; @node_value; end
  def next_node; @next_node; end

  def initialize(val)
    @head = Node.new  # @head --> first node (head node)
    @node_value = @head.value(val)  # @node_value --> value of actual node
    @tail = @head  # @tail --> last node (tail node)
    @nodes_count = 1
  end

  def append(value)
    @node = Node.new  # @node --> actual appended node
    @node_value = @node.value(value)
    @next_node = @tail.next_node(@node)
    @tail = @node
    @nodes_count += 1
  end

  def prepend(value)
    @node = Node.new
    @node_value = @node.value(value)
    @node.next_node(@head)
    @next_node = @head
    @head = @node
    @nodes_count += 1
  end

  def size
    @nodes_count
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    searched_node = @head
    (index - 1).times do
      searched_node = searched_node.nxt_node
    end
      @node_value = searched_node.vlue
      searched_node
  end

  def pop
    node_to_pop = @head
    until node_to_pop == @tail
      prev_node = node_to_pop
      node_to_pop = node_to_pop.nxt_node
    end
    @tail = prev_node
    @nodes_count -= 1
    prev_node.next_node(nil)
  end

  def contains(value)
    node_contains = @head
    until node_contains == @tail
      return true if node_contains.vlue == value
      node_contains = node_contains.nxt_node
    end
    false
  end

  def find(value)
    i = 1
    node_find = @head
    until node_find == @tail
      return i if node_find.vlue == value
      return nil if node_find == nil
      node_find = node_find.nxt_node
      i += 1
    end
  end

  def to_s
    node = @head
    str = ''
    until node == @tail
      str += "( #{node.vlue} ) -> "
      node = node.nxt_node
    end
    str += "( #{node.vlue} ) -> "
    str += 'nil'
  end

  def insert_at(value, index)
    node_after = @head
    prev_node = nil
    (index - 1).times do
      prev_node = node_after
      node_after = node_after.nxt_node  
    end
    @node = Node.new
    @node.value(value)
    @node.next_node(node_after)
    prev_node.next_node(@node)
    @nodes_count += 1
  end

  def remove_at(index)
    node_after = @head
    node_to_remove = nil
    prev_node = nil
    (index).times do
      prev_node = node_to_remove
      node_to_remove = node_after
      node_after = node_after.nxt_node  
    end
    prev_node.next_node(node_after)
    @nodes_count -= 1
  end
end
