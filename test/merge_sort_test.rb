require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end

  def test_spliting_array
    submitted = @sorter.sort([6, 5, 3, 1, 8, 7, 2, 4])
    expected  = [1, 2, 3, 4, 5, 6, 7, 8]

    assert_equal expected, submitted
  end

  def test_array_of_one_is_sorted
    # skip
    unsorted  = [2]
    submitted = @sorter.sort(unsorted)
    expected  = [2]

    assert_equal expected, submitted
  end
end
