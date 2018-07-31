# Let's count the total number of operations for a recursive fib function

def numbers(n, num_of_operations)
  num_of_operations += 1

  if (n == 0)
    return num_of_operations
  elsif (n == 1)
    return num_of_operations
  else
    return numbers(n-1, num_of_operations) + numbers(n-2, num_of_operations)
  end
end

for i in 0..34
  num_of_operations = 0
  num_of_operations = numbers(i, num_of_operations)
  puts "For n = #{i}, Operations: #{num_of_operations}"
end
