require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end

  def test_array_of_one_is_sorted
    # skip
    unsorted  = [2]
    submitted = @sorter.sort(unsorted)
    expected  = [2]

    assert_equal expected, submitted
  end

  def test_spliting_array_0
    # skip
    submitted = @sorter.sort([6, 5, 3, 1, 8, 7, 2, 4])
    expected  = [1, 2, 3, 4, 5, 6, 7, 8]

    assert_equal expected, submitted
  end

  def test_spliting_array_1
    # skip
    submitted = @sorter.sort([15, 42, 16, 50, 108, 23, 8, 4])
    expected  = [4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, submitted
  end

  def test_spliting_array_2
    # skip
    submitted = @sorter.sort([3, 2, 5, 4, 1])
    expected  = [1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

end
