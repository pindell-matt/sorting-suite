require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'selection_sort'
require 'pry'
require 'benchmark'

module SortingSuite

  class Bubble
    def initialize(array)
      pp BubbleSort.new.sort(array)
    end
  end

  class Insertion
    attr_reader :array

    def initialize(array)
      @array = array
    end

    def inplace_sort
      pp InsertionSort.new.inplace_sort(array)
    end

    def sort
      pp InsertionSort.new.sort(array)
    end
  end

  class Merge
    def initialize(array)
      pp MergeSort.new.sort(array)
    end
  end

  class Selection
    def initialize(array)
      pp SelectionSort.new.sort(array)
    end
  end

  class Bench
    def time(method, array)
      var = benchmark(method, array)
      puts "#{method.to_s.split("::")[1]}Sort took #{var.real.round(6)} seconds"
    end

    def benchmark(method, array)
      Benchmark.measure {method.new(array)}
    end

    def fastest(array)
      bubble    = benchmark(SortingSuite::Bubble, (array)).real
      insertion = benchmark(SortingSuite::Insertion, (array)).real
      selection = benchmark(SortingSuite::Selection, (array)).real
      merge     = benchmark(SortingSuite::Merge, (array)).real

      all = {'bubble' => bubble, 'insertion' => insertion, 'selection' => selection, 'merge' => merge}
      puts "#{all.key(all.values.min).capitalize}Sort is the fastest"
    end

    def slowest(array)
      bubble    = benchmark(SortingSuite::Bubble, (array)).real
      insertion = benchmark(SortingSuite::Insertion, (array)).real
      selection = benchmark(SortingSuite::Selection, (array)).real
      merge     = benchmark(SortingSuite::Merge, (array)).real

      all = {'bubble' => bubble, 'insertion' => insertion, 'selection' => selection, 'merge' => merge}
      puts "#{all.key(all.values.max).capitalize}Sort is the slowest"
    end
  end

end

if __FILE__ == $0
  array = [5, 4, 3, 2, 1]
  # array = (0..10_000).to_a.shuffle
  # SortingSuite::Bubble.new(array)
  # SortingSuite::Insertion.new(array).inplace_sort
  # SortingSuite::Insertion.new(array).sort
  # SortingSuite::Merge.new(array)
  # SortingSuite::Selection.new(array)

  benchmark = SortingSuite::Bench.new
  benchmark.time(SortingSuite::Bubble, (array))
  benchmark.time(SortingSuite::Merge, (array))
  benchmark.fastest(array)
  benchmark.slowest(array)
end
