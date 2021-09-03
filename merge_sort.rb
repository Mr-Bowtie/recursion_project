def merge_sort(array)
  # This is the base case
  # single (or zero) element arrays are considered sorted
  if array.size < 2
    return array
  else
    #This splits the input array in 2.
    #The left side will be smaller if the array has an odd number of elements
    #This is arbitrary
    left = merge_sort(array.slice!(0..(array.size / 2) - 1))
    right = merge_sort(array)
    merge(left, right)
  end
end

def merge(left, right, merged = [])
  until left.empty? && right.empty?
    # if one side is empty, the other side is considered to be already sorted
    # Returning the current holding array with the pre-sorted side decreases iterations
    if left.empty?
      return merged + right
    elsif right.empty?
      return merged + left
    else
      # Compare the first elements from both halves
      # push the lower of the two into the holding array
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
