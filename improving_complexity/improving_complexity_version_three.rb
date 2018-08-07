def bubble_sort_multiple(*arrays)
  combined_array = []
  arrays.each do |array|
    combined_array.concat(array)
  end

  n = combined_array.length
  begin
    swapped = false
    (n - 1).times do |i|
      if combined_array[i] > combined_array[i + 1]
        tmp = combined_array[i]
        combined_array[i] = combined_array[i + 1]
        combined_array[i + 1] = tmp
        swapped = true
      end
    end
  end until not swapped

  # Return the sorted array
  combined_array
end

collection1 = [3, 2, 1]
collection2 = [4, 6, 5]
collection3 = [8, 9, 7]

p bubble_sort_multiple(collection2, collection1, collection3)
