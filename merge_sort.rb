def merge_sort(array)
  if array.size < 2
    return array
  else
    left = array.slice!(0..(array.size / 2) - 1)
    right = array
    left = merge_sort(left)
    right = merge_sort(right)
  end
  merged = []
  until left.empty? && right.empty?
    if left.empty?
      merged + right
    elsif right.empty?
      merged + left
    else
      left_1 = left.shift
      right_1 = right.shift
      left_1 < right_1 ? merged << left_1 << right_1 : merged << right_1 << left_1
    end
  end
  merged
end

p merge_sort([2, 1])
p merge_sort([5, 8, 7, 1, 4, 9])
p merge_sort([3, 1, 2])
