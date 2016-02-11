require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def setup
    @sorter = BubbleSort.new
  end

  def test_bubble_sorts_two_elements
    unsorted  = [2, 1]
    submitted = @sorter.sort(unsorted)
    expected  = [1, 2]

    assert_equal expected, submitted
  end

end
