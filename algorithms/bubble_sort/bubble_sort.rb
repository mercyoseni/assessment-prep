def bubble_sort(array)
  swap = true
  n = array.length

  while swap
    swap = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end
  end

  array
end
