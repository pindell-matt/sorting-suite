require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require 'pry'
require 'benchmark'

class SortingSuite

  def bubble_sort(array)
    BubbleSort.new.sort(array)
  end

  def insertion_sort(array)
    InsertionSort.new.sort(array)
  end

  def merge_sort(array)
    MergeSort.new.sort(array)
  end

end

if __FILE__ == $0
  sorter = SortingSuite.new
  sorter.bubble_sort([3, 2, 1])
  sorter.insertion_sort([3, 2, 1])
  sorter.merge_sort([3, 2, 1])
end
