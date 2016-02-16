require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/merge_sort'

class MergeSortTest < Minitest::Test

  def setup
    @sorter = MergeSort.new
  end

  def test_merge_sort_returns_empty_array
    unsorted  = []
    submitted = @sorter.sort(unsorted)
    expected  = []

    assert_equal expected, submitted
  end

  def test_merge_sort_array_of_one_is_sorted
    # skip
    unsorted  = [2]
    submitted = @sorter.sort(unsorted)
    expected  = [2]

    assert_equal expected, submitted
  end

  def test_merge_sorts_even_numbered_array
    # skip
    unsorted  = [4, 3, 2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4]

    assert_equal expected, submitted
  end

  def test_merge_sorts_odd_numbered_array
    # skip
    unsorted  = [3, 2, 5, 4, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

  def test_merge_sorts_larger_even_numbered_array
    # skip
    unsorted  = [6, 5, 3, 1, 8, 7, 2, 4]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4, 5, 6, 7, 8]

    assert_equal expected, submitted
  end

  def test_merge_sorts_larger_odd_numbered_array
    # skip
    unsorted  = [15, 42, 16, 50, 108, 23, 8, 4, 0]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, submitted
  end

  def test_merge_still_sorts_with_nested_arrays
    # skip
    unsorted  = [[15, 42, 16], 50, 108, [23, 8, 4], 0]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, submitted
  end

  def test_merge_sorts_multiple_chars
    # skip
    unsorted  = ["d", "b", "a", "c"]
    submitted = @sorter.sort(unsorted)
    expected  = ["a", "b", "c", "d"]

    assert_equal expected, submitted
  end

  def test_merge_sorts_non_chars
    # skip
    unsorted  = ["d", "b", "*", "a", ",", "c"]
    submitted = @sorter.sort(unsorted)
    expected  = ["*", ",", "a", "b", "c", "d"]

    assert_equal expected, submitted
  end

  def test_merge_sorts_nested_chars_and_duplicates
    unsorted  = ["d", "b", ["*", "a"], ",", "c", "z", ["k", "z"]]
    submitted = @sorter.sort(unsorted)
    expected  = ["*", ",", "a", "b", "c", "d", "k", "z", "z"]

    assert_equal expected, submitted
  end

  def test_merge_sorts_large_shuffled_array
    unsorted  = (0..5_000).to_a.shuffle
    submitted = @sorter.sort(unsorted)
    expected  = (0..5_000).to_a

    assert_equal expected, submitted
  end

  def test_merge_sorts_10k_shuffled_array
    unsorted  = (0..10_000).to_a.shuffle
    submitted = @sorter.sort(unsorted)
    expected  = (0..10_000).to_a

    assert_equal expected, submitted
  end

  def test_merge_sorts_50k_shuffled_array
    unsorted  = (0..50_000).to_a.shuffle
    submitted = @sorter.sort(unsorted)
    expected  = (0..50_000).to_a

    assert_equal expected, submitted
  end

end
