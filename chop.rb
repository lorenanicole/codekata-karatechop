
## Kata Chop Implementation One: Using Iterative Approach
## to solve binary search using a while loop to drive the
## search.

def chop(int, array)
  low = 0
  high = array.length - 1
  mid = array.length / 2
  i = 0

  while i < array.length
    if array[mid] > int
      high = mid
      mid = (high - low) / 2
    elsif array[mid] < int
      low = mid
      mid = mid + ((high - low) / 2)
    elsif array[mid] == int
      return mid
    end
    i += 1
  end

  return -1
end

p chop(2, [1,2,3,4,5,6,7]) == 1
p chop(6, [1,2,3,4,5,6,7]) == 5
p chop(-5, [1,2,3,4,5,6,7]) == -1

p chop(4, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == 6
p chop(25, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == -1
p chop(35, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == -1

p chop(42, [42,43,44,45,46,47]) == 0
p chop(48, [42,43,44,45,46,47]) == -1
p chop(46, [42,43,44,45,46,47]) == 4


