def quick_sort(collection)
  pivot = collection.length - 1
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

  unless pivot == collection.length - 1
    # Split array into two sub-arrays on either side of pivot and sort them
    sub_collection_1 = collection[0...pivot]
    sub_collection_2 = collection[pivot+1...collection.length]
    collection = quick_sort(sub_collection_1).push(collection[pivot]).concat(quick_sort(sub_collection_2))
  end

  collection
end

# Starting from `index`, shift every element in `collection` to the left one time until the pivot is reached.
def shift(index, pivot, collection)
  index.upto(pivot) do |i|
    collection[i] = collection[i + 1]
  end
  collection
end

arr = ['E', 'C', 'A', 'B', 'F', 'G', 'D']
p quick_sort(arr)


