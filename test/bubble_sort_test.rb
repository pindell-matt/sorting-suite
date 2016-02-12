require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end
  
  def test_array_of_one_is_sorted
    # skip
    unsorted  = [2]
    submitted = @sorter.sort(unsorted)
    expected  = [2]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_two_nums
    # skip
    unsorted  = [2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_three_nums
    # skip
    unsorted  = [3, 2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_multiple_nums
    unsorted  = [0, 2, 1, 3, 4, 5]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_nums_with_duplicates
    unsorted  = [0, 2, 1, 3, 0, 4, 50, 5, 0]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 0, 0, 1, 2, 3, 4, 5, 50]

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

  def test_bubble_sorts_elements_in_nested_arrays
    unsorted  = [[0], 4, [1], [2, 6], [3, 5]]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 1, 2, 3, 4, 5, 6]

    assert_equal expected, submitted
  end

end
