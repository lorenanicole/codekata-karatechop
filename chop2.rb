## Kata Chop Implementation Two: Using Recursive approach
## with ternary operator to make recursive calls. As the
## recursive calls are made, the stacks branch like a tree,
## pruning branches that evaluate to -1.

def chop2(int, array)
  low = 0
  high = array.length - 1
  mid = array.length / 2

  if array.length == 1 && array[mid] != int
    -1
  elsif array[mid] == int
    mid
  elsif array[mid] > int
    chop2(int, array[low...mid]) == -1 ? -1 : chop2(int, array[low...mid])
  elsif array[mid] < int
    chop2(int, array[mid...high]) == -1 ? -1 : chop2(int, array[mid...high]) + array[low..mid-1].length
  end

end

puts chop2(ARGV[0].to_i,ARGV[1].split(",").map(&:to_i))
