require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require 'pry'
require 'benchmark'

module SortingSuite
  class Benchmark

    def bubble_sort(array)
      BubbleSort.new.sort(array)
    end

    def insertion_sort(array)
      InsertionSort.new.sort(array)
    end

    def merge_sort(array)
      MergeSort.new.sort(array)
    end

    def time

    end

    def fastest

    end

    def slowest

    end
  end

end

if __FILE__ == $0
  benchmark = SortingSuite::Benchmark.new

  binding.pry

end
