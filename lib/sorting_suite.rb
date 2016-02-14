require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require 'pry'
require 'benchmark'

module SortingSuite
  class Benchmark
    attr_reader :sorters, :fastest_time, :fastest_sorter, :slowest_time, :slowest_sorter

      def initialize
        @sorters = known_sorters
        @slowest_time = nil
        @fastest_time = nil
        @slowest_sorter = nil
        @fastest_sorter = nil
      end

      def known_sorters
        [SortingSuite::BubbleSort, SortingSuite::InsertionSort, SortingSuite::Selection,
        SortingSuite::MergeSort]
      end
  end

end

if __FILE__ == $0
  benchmark = SortingSuite::Benchmark.new
  sample = [3,3,4,5,1]
  unsorted = (1..5000).to_a.shuffle
  puts benchmark.time(SortingSuite::BubbleSort, sample)

end
