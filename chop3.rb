## Kata Chop Implementation 3 Recursive with Optional Parameters:
## Using recursion again rather than sending in smaller sections of
## the array, the same array is sent into each recursive call but the
## variables pointing to the left and right side of the array are
## modified in relation to the mid point.

def chop3(int,array,left=0,right=array.size-1)
  mid=(left+right)/2
  if right < left
    -1
  elsif array[mid] == int
    mid
  elsif array[mid] > int
    chop3(int,array,left,mid-1)
  elsif array[mid] < int
    chop3(int,array,mid+1,right)
  end
end

p chop3(2, [1,2,3,4,5,6,7]) == 1
p chop3(6, [0,1,2,3,4,5,6,7]) == 6
p chop3(-5, [1,2,3,4,5,6,7]) == -1

p chop3(4, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == 6
p chop3(25, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == -1
p chop3(35, [-2,-1,0,1,2,3,4,5,6,7,8,9]) == -1

p chop3(42, [42,43,44,45,46,47]) == 0
p chop3(48, [42,43,44,45,46,47]) == -1
p chop3(46, [42,43,44,45,46,47]) == 4
