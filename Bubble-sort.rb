def bubble_sort array
  for j in (0...array.length) do
    for i in (0...array.length - 1) do
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  return array
end

# bubble_sort_by takes an array (by reference) as argument and
# expects a block.
# It returns a sorted array depending on the resulting value
# of the block
def bubble_sort_by array
  # Repeat iteration as much as needed
  for j in (0...array.length) do
    # Iterate over array to compare adjacent values
    for i in (0...array.length - 1) do
      # Give control to the block and store result in 'value'
      value = yield(array[i], array[i+1])
      if value > 0
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  return array
end

arr = [1,3,1,2,1,5,1]
bubble_sort(arr)
puts arr
result = bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
  left.length - right.length
end

puts result