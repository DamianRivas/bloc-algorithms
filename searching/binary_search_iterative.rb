def binary_search_iterative(item, collection)
  low = 0
  high = collection.length
  mid = (low + high) / 2

  while low < high
    if collection[mid] < item
      high = mid - 1
    elsif collection[mid] > item
      low = mid + 1
    else
      return collection[mid]
    end
  end
  nil
end