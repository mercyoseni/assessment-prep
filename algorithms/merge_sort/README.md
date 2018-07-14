## Merge sort
Merge Sort is a Divide and Conquer algorithm. It divides input array in two halves, calls itself for the two halves and then merges the two sorted halves. The merge() method is used for merging two halves. The merge(arr, l, m, r) is key process that assumes that arr[l..m] and arr[m+1..r] are sorted and merges the two sorted sub-arrays into one. This algorithm contains two main methods:-
- a merge_sort method that makes recursive calls upon itself
- a merge method that will merge the subarrays in a sorted manner

### Pseudocode
#### `merge_sort` method
1. Define a mid-point, `array.length / 2` and call a floor method so the number always rounds down
2. Use the midpoint to divide the array into halves, a left and right; the left array to start with first element and end at element mid — 1; right array starts at mid and ends at the last element.
3. `merge_sort` will always be called (recursively) upon the subarrrays; which means picking a new midpoint, dividing the subarray into halves, and set left and right subarrays that will call `merge_sort` again
4. Call the `merge` method to combine the left and right subarrays into one array

#### `merge` method
1. If one of the two subarrays are empty, return only the elements in the non-empty subarray
2. If the subarrays are not empty, then compare the value of each element in the first index position; if the first element of left array is smaller than the first element of right array, then build the sorted subarray beginning with the first element of left array + the value of a recursive `merge` method call which takes `left[1..left.length],right` as the input parameters. It starts with the second element at index 1 since the first element has already been “sorted”
3. If first element of left array is larger than first element of right array, the opposite occurs; this indicate the first element of the right array is “sorted” and call merge on what remains `left, right[1..right.length]`
