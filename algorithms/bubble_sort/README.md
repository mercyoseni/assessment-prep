## Bubble sort
Bubble sort compares all the elements of an array one by one and sort them based on their values.
Sorting takes place by stepping through all the elements one-by-one and comparing it with the adjacent element and swapping them if required.

### Pseudocode
1. Iterate through `array.length - 1`, let `i` represent the index of the item in the array
2. Create a `swap` variable and set it to true by default
3. Create a `while` loop that will run as long as `swap` is `true`
4. Set `swap` to `false` since immediately after the beginning of your loop, there have been no swaps2
5. In the loop, iterate through each element of the array and check if element `i` is greater than the element next to it i.e. `i + 1`; if true, swap the value of `i` with value of `i + 1` and set value of `swap` to `true` since there was a swap
6. Repeat the loop until every item is in order and the value of `swap` remains `false`
