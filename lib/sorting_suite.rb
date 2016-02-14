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
  array = [3, 2, 1]
  sorter = SortingSuite.new
  sorter.bubble_sort(array)
  sorter.insertion_sort(array)
  sorter.merge_sort(array)
end
