require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_bubble_sorts_two_elements
    # skip
    unsorted  = [2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_three_elements
    # skip
    unsorted  = [3, 2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2, 3]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_multiple_elements
    unsorted  = [0, 2, 1, 3, 4, 5]
    submitted = @sorter.sort(unsorted)
    expected  = [0, 1, 2, 3, 4, 5]

    assert_equal expected, submitted
  end

  def test_bubble_sorts_multiple_chars
    unsorted  = ["d", "b", "a", "c"]
    submitted = @sorter.sort(unsorted)
    expected  = ["a", "b", "c", "d"]

    assert_equal expected, submitted
  end

end
