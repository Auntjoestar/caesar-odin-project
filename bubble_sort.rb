def bubble_sort(array)
  swapped = true
  while swapped 
    swapped = false
    for i in 0..array.length - 2
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])