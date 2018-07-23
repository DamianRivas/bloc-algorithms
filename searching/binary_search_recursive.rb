def binary_search_recursive(item, collection, low, high)
  return nil if low > high

  mid = (low + high) / 2
  if item < collection[mid]
    binary_search_recursive(item, collection, low, mid - 1)
  elsif item > collection[mid]
    binary_search_recursive(item, collection, mid + 1, high)
  else
    return item
  end
end