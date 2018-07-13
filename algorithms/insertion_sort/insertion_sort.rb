def insertion_sort(array)
  return array if array.size <= 1

  n = array.length

  n.times do |j|
    while(j > 0 and (array[j-1] > array[j]))
      array[j], array[j-1] = array[j-1], array[j]
      j -= 1
    end
  end

  array
end
