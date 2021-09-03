require 'pry'

def merge_sort(array)
  if array.size < 2
    return array
  else
    left = merge_sort(array.slice!(0..(array.size / 2) - 1))
    right = merge_sort(array)
  end
  merged = []
  until left.empty? && right.empty?
    #binding.pry
    if left.empty?
      return merged + right
    elsif right.empty?
      return merged + left
    else
      left[0] < right[0] ? merged << left.shift : merged << right.shift
      #binding.pry
    end
  end
  merged
end

p merge_sort([4, 3, 2, 1])
p merge_sort([5, 8, 7, 1, 4, 9])
p merge_sort([3, 1, 2])
