require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_bubble_sort_returns_empty_array
    unsorted  = []
    submitted = @sorter.sort(unsorted)
    expected  = []

    assert_equal expected, submitted
  end

  def test_array_of_one_is_sorted
    unsorted  = [2]
    submitted = @sorter.sort(unsorted)
    expected  = [2]

    assert_equal expected, submitted
  end

  def test_swap_two_elements
    array     = [2, 1]
    submitted = @sorter.swap!(array, 0, 1)
    expected  = [1, 2]

    assert_equal expected, submitted
  end

  def test_swap_two_elements
    array     = [5, 2, 3, 4, 1]
    submitted = @sorter.swap!(array, 0, -1)
    expected  = [1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_even_numbered_array
    unsorted  = [4, 3, 2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_odd_numbered_array
    unsorted  = [3, 2, 5, 4, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_larger_even_numbered_array
    unsorted  = [6, 5, 3, 1, 8, 7, 2, 4]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3, 4, 5, 6, 7, 8]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_larger_odd_numbered_array
    unsorted  = [15, 42, 16, 50, 108, 23, 8, 4, 0]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, submitted
  end

  def test_bubble_still_sorts_with_nested_arrays
    unsorted  = [[15, 42, 16], 50, 108, [23, 8, 4], 0]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_multiple_chars
    unsorted  = ["d", "b", "a", "c"]
    submitted = @sorter.sort(unsorted)
    expected  = ["a", "b", "c", "d"]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_non_chars
    unsorted  = ["d", "b", "*", "a", ",", "c"]
    submitted = @sorter.sort(unsorted)
    expected  = ["*", ",", "a", "b", "c", "d"]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_nested_chars_and_duplicates
    unsorted  = ["d", "b", ["*", "a"], ",", "c", "z", ["k", "z"]]
    submitted = @sorter.sort(unsorted)
    expected  = ["*", ",", "a", "b", "c", "d", "k", "z", "z"]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_large_shuffled_array
    unsorted  = (0..5_000).to_a.shuffle
    submitted = @sorter.sort(unsorted)
    expected  = (0..5_000).to_a

    assert_equal expected, submitted
  end

end
