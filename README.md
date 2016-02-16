# Sorting Suite

Ruby implementations of four fundamental sorting algorithms: Bubble Sort,
Insertion Sort, Selection Sort, and Merge Sort.

## 1. Bubble Sort

[Bubble Sort](https://en.wikipedia.org/wiki/Bubble_sort)

```ruby
sorter = BubbleSort.new
# => #<BubbleSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
```

## 2. Insertion Sort

[Insertion Sort](https://en.wikipedia.org/wiki/Insertion_sort)

```ruby
sorter = InsertionSort.new
# => #<InsertionSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
```

```ruby
SortingSuite::InsertionSort.new([3, 2, 1]).inplace_sort
# => [1, 2, 3]

array = [4, 0, 2, 3, 1]
SortingSuite::InsertionSort.new(array).inplace_sort
# => [0, 1, 2, 3, 4]

SortingSuite::InsertionSort.new(array).sort.object_id == array.object_id
# => true
```

### Selection Sort

[Selection Sort](https://en.wikipedia.org/wiki/selection_sort).

```ruby
SortingSuite::Selection.new([3, 2, 1])
# => [1, 2, 3]

SortingSuite::Selection.new([4, 0, 2, 3, 1])
# => [0, 1, 2, 3, 4]
```

## 3. Merge Sort

[Merge Sort](https://en.wikipedia.org/wiki/merge_sort)

```ruby
sorter = MergeSort.new
# => #<MergeSort:0x007f81a19e94e8>
sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
```

### Benchmark

```ruby
benchmark = SortingSuite::Benchmark.new

benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
# => "InsertionSort took 0.004333 seconds"

benchmark.time(SortingSuite::MergeSort)
# => "MergeSort took 0.000274 seconds"

benchmark.fastest([2, 8, 1, 0, 5])
# => "MergeSort is the fastest"

benchmark.slowest([1, 2, 3, 4, 5])
# => "BubbleSort is the slowest"
```
