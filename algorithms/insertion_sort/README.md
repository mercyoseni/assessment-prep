## Insertion sort
Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort.

### Pseudocode
1. First, we iterate through all elements of the array with (array.length).times do. j represents the index of the item in the array.
1. Set `n` equal to `array.length`, iterate through all elements `n` times. Let `j` represent the index of the item in the array
2. Then set checks to run only `while j > 0`, i.e. element is not the first item (not index 0) and compares the previous element with the current element; if previous element is larger than current element, swap previous with current; else terminate the check
5. Decrement `j` counter by 1
