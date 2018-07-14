def linear_search(array, target)
  n = array.length

  n.times do |i|
    return i if array[i] == target
  end

  return -1
end
