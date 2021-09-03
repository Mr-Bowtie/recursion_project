def merge_sort(array)
  if array.size < 2
    return array
  else
    left = merge_sort(array.slice!(0..(array.size / 2) - 1))
    right = merge_sort(array)
    merge(left, right)
  end
end

def merge(left, right, merged = [])
  until left.empty? && right.empty?
    if left.empty?
      return merged + right
    elsif right.empty?
      return merged + left
    else
      left[0] < right[0] ? merged << left.shift : merged << right.shift
    end
  end
  merged
end

arr = []
rand(100).times do
  arr << rand(200)
end

p merge_sort(arr)
