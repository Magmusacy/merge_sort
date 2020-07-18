def merge(left,right,merged=[])
  return merged << left if right.empty?
  return merged << right if left.empty?
  left.first < right.first ? merged << left.shift : merged << right.shift
  merge(left,right,merged)
end

def merge_sort(array)
  if array.length > 1
    left = merge_sort(array.slice!(0,array.length/2)) 
    right = merge_sort(array)
    merge(left,right).flatten
  else
    array
  end
end

p merge_sort([4,4,6,7,4,5,9])
p merge_sort([0,5,32,54,23,34,102,3952])
p merge_sort([0,9,8,8,7,6,5,4,3,2,1])
p merge_sort([32,12,45,654,324,6752,31234])
p merge_sort([69,96,69,96,69,96,69,96])
