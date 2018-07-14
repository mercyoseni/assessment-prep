def binary_search(array, target)
  n = array.length
  lo = 0
  hi = n - 1
  mid = (lo + hi) / 2

  n.times do |i|
    if array[i] == target
      return i
    elsif array[i] > target
      hi = mid - 1
    else
      lo = mid + 1
    end
  end

  return -1
end
