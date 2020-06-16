def merge(left,right)
  return right if left.empty?
  return left if right.empty?
  if left[0] < right[0]
    newArr = ([left[0]] << merge(left[1..-1], right[0..-1])).flatten
  else
    newArr = ([right[0]] << merge(left[0..-1], right[1..-1])).flatten
  end
newArr
end

def merge_sort(array)
  if array.length > 1
    left = merge_sort(array.slice!(0,array.length/2)) 
    right = merge_sort(array)
    newArray = merge(left,right)
  else
    array
  end
end

p merge_sort([4,4,6,7,4,5,9])
p merge_sort([0,5,32,54,23,34,102,3952])
p merge_sort([0,9,8,8,7,6,5,4,3,2,1])
p merge_sort([32,12,45,654,324,6752,31234])
p merge_sort([69,96,69,96,69,96,69,96])