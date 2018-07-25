def quick_sort(collection)
  return collection if collection.size <= 1
  pivot = collection.length - 1

  partition(collection, pivot)

  # Split array into two sub-arrays on either side of pivot and sort them
  sub_collection_1 = collection[0...pivot]
  sub_collection_2 = collection[pivot+1...collection.length]
  p sub_collection_2 if sub_collection_2 == [10, 8, 12]
  collection = quick_sort(sub_collection_1).push(collection[pivot]).concat(quick_sort(sub_collection_2))

  collection
end

# Move items that are greater than the pivot directly to the right of the pivot
def partition(collection, pivot)
  index = 0

  while index < pivot
    if collection[index] > collection[pivot]
      temp = collection[index]
      collection = shift(index, pivot, collection)
      collection[pivot] = temp
      pivot -= 1
      next
    end
    index += 1
  end
end

# Starting from `index`, shift every element in `collection` to the left one time until the pivot is reached.
def shift(index, pivot, collection)
  index.upto(pivot) do |i|
    collection[i] = collection[i + 1]
  end
  collection
end
