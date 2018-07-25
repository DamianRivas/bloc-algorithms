require_relative "min_binary_heap.rb"
require_relative "node.rb"

def heap_sort(collection)
  node = Node.new(collection[0])
  min_heap = MinBinaryHeap.new(node)
  sorted_collection = []

  collection[1..-1].each do |item|
    node = Node.new(item)
    min_heap.insert(min_heap.root, node)
  end

  while min_heap.root
    sorted_collection << min_heap.root.data
    break if min_heap.delete(min_heap.root, min_heap.root.data) == nil
  end

  sorted_collection
end

collection = [22, 45, 12, 8, 10, 6, 72, 81, 33, 18, 50, 14]
p heap_sort(collection)
