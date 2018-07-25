require_relative "./quick_sort.rb"

def bucket_sort(collection)
  n = collection.length
  max = collection.max
  min = collection.min

  buckets = Array.new(10) {[]}
  divider = ((max + 1.0) / 10).ceil

  collection.each_with_index do |item, index|
    bucket_index = item / divider
    buckets[bucket_index].push(item)
  end

  sorted_collection = []

  buckets.each do |bucket|
    bucket = quick_sort(bucket)
    sorted_collection.concat(bucket)
  end

  sorted_collection
end

collection = [22, 45, 12, 8, 10, 6, 72, 81, 33, 18, 50, 14]
p bucket_sort(collection)