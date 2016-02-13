require 'pry'

class MergeSort

  def initialize
    @sorted = []
  end

  def sort(array)
    (array.length - 3).times do
      split_array(array)
      array.shift(2)
    end
    @sorted
    # binding.pry
  end

  # recursively split till count/length == 1
  def split_array(array)
    return array if array.count == 1
    center = (array.length / 2)
    left   = array.take(center)
    right  = array.drop(center)
    # if left.count == 1
    #   return left.first
    # else
    #   split_array(left)
    # end

    if left.count == 1
      first   = left[0]
      compare = right[0]
      if first > compare
        @sorted << compare
        @sorted << first
      else
        @sorted << first
        @sorted << compare
      end
    else
      split_array(left)
    end

  end

end
