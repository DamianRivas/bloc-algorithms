class Node
  attr_accessor :data
  attr_accessor :left
  attr_accessor :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def <=>(node)
    @data <=> node.data
  end

  def >=(node)
    @data >= node.data
  end

  def <=(node)
    @data <= node.data
  end
end
