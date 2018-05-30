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