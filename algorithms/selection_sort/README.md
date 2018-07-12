## Selection sort

The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.

1) The subarray which is already sorted
2) Remaining subarray which is unsorted

In every iteration of selection sort, the minimum element from the unsorted subarray is picked and moved to the sorted subarray.

But this can also be achieved by manipulating the input array, i.e. swapping the index of the minimum element with that of the element in the proposed index. This helps to save time and space memory.

### Pseudocode
1. Set `n` equal to `array.length — 1`, this represents how many times you need to do the comparisons
2. Set a `min_index` value equal to your initial `i` index, this should be the first element in array
3. Create a second (nested) loop starting at the second element until `n` using variable `j`
4. Compare the value of element at index `j` with value of element of `min_index`; if value of element at index `j` is less than value of element of `min_index`, index `j` becomes the new `min_index`
5. Swap value of element at `i` index with value of element at `min_index`
6. Return the manipulated array
