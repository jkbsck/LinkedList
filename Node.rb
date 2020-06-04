class Node
  attr_accessor :value, :next_node, :nxt_node, :vlue

  def nxt_node; @next_node; end
  
  def vlue; @value; end

  def initialize
    @value = nil
    @next_node = nil
  end

  def value(val)
    @value = val
  end

  def next_node(next_node)
    @next_node = next_node
  end
end
