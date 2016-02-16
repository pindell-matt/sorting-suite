require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def setup
    @sorter = InsertionSort.new
  end

  def test_insertion_sort_returns_empty_array
    unsorted      = []
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = []

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sort_array_of_one_is_sorted
    # skip
    unsorted      = [2]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [2]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_even_numbered_array
    # skip
    unsorted      = [4, 3, 2, 1]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [1, 2, 3, 4]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_odd_numbered_array
    #
    unsorted      = [3, 2, 5, 4, 1]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [1, 2, 3, 4, 5]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_larger_even_numbered_array
    # skip
    unsorted      = [6, 5, 3, 1, 8, 7, 2, 4]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [1, 2, 3, 4, 5, 6, 7, 8]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_larger_odd_numbered_array
    # skip
    unsorted      = [15, 42, 16, 50, 108, 23, 8, 4, 0]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_still_sorts_with_nested_arrays
    # skip
    unsorted      = [[15, 42, 16], 50, 108, [23, 8, 4], 0]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = [0, 4, 8, 15, 16, 23, 42, 50, 108]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_multiple_chars
    # skip
    unsorted      = ["d", "b", "a", "c"]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = ["a", "b", "c", "d"]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_non_chars
    # skip
    unsorted      = ["d", "b", "*", "a", ",", "c"]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = ["*", ",", "a", "b", "c", "d"]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_nested_chars_and_duplicates
    unsorted      = ["d", "b", ["*", "a"], ",", "c", "z", ["k", "z"]]
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = ["*", ",", "a", "b", "c", "d", "k", "z", "z"]

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

  def test_insertion_sorts_large_shuffled_array
    unsorted      = (0..5_000).to_a.shuffle
    standard_sort = @sorter.sort(unsorted)
    inplace_sort  = @sorter.inplace_sort(unsorted)
    expected      = (0..5_000).to_a

    assert_equal expected, standard_sort
    assert_equal expected, inplace_sort
  end

end
