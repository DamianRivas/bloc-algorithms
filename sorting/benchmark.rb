require "benchmark"

require_relative "./quick_sort.rb"
require_relative "./bucket_sort.rb"
require_relative "./node.rb"
require_relative "./min_binary_heap.rb"
require_relative "./heap_sort.rb"

# Benchmark the sorting of an array with 50 randomized numbers.
collection = Array.new(50) { rand(1..1000) }

Benchmark.bmbm do |x|
  x.report("quick:") { quick_sort(collection) }
  x.report("bucket:") { bucket_sort(collection) }
  x.report("heap:") { heap_sort(collection) }
end
