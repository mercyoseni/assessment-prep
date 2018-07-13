def selection_sort(array)
  return array if array.size <= 1

  n = array.length - 1

  n.times do |i|
    min_index = i

    (i + 1..n).each do |j|
      min_index = j if array[j] < array[min_index]
    end

    array[i], array[min_index] = array[min_index], array[i]
  end

  array
end
