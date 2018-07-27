def big_o_linear(n)
  puts " n  | Iterations"
  1.upto(n) do |i|
    puts " #{i}#{" " if i < 10} | #{i}"
  end
end

big_o_linear(10)
