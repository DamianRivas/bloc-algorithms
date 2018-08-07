def optimized_sort(*arrays)
  combined_array = []
  arrays.each do |array|
    combined_array.concat(array)
  end

  sorted_array = [combined_array.delete_at(combined_array.length - 1)]

  for val in combined_array
    sorted_array.each_with_index do |sorted_val, i|
      if val <= sorted_val
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
    end
  end

  # Return the sorted array
  sorted_array
end

collection1 = [3, 2, 1]
collection2 = [4, 6, 5]
collection3 = [8, 9, 7]

p optimized_sort(collection2, collection1, collection3)
