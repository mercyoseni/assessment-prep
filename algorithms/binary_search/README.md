## Binary search
Binary Search finds the position of a target value within a sorted array. It's time complexity of O(log n) makes it very fast as compared to other sorting algorithms.

### Pseudocode
1. Start with the middle element:
    - If the target value is equal to the middle element of the array, then return the index of the middle element
    - If not, then compare the middle element with the target value,
      - If the target value is greater than the number in the middle index, then pick the elements to the right of the middle index, and start with step 1
      - If the target value is less than the number in the middle index, then pick the elements to the left of the middle index, and start with step 1
2. When a match is found, return the index of the element matched
3. If no match is found, then return -1
