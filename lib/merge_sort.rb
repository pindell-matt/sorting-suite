require 'pry'

class MergeSort

  def initialize
    @sorted = []
  end

  def sort(array)
    duplicate = array.dup
    count = duplicate.count / 2

    count.times do
      first  = duplicate.shift(1)
      second = duplicate.shift(1)
      if first[0] > second[0]
        @sorted << [second[0], first[0]]
      else
        @sorted << [first[0], second[0]]
      end

    end
    binding.pry
  end

  # recursively split till count/length == 1
  def split_array(array)
    return array if array.count == 1
    center = (array.length / 2)
    left   = array.take(center)
    right  = array.drop(center)

    if left.count == 1
      return left
    else
      split_array(left)
    end

    # if left.count == 1
    #   first   = left[0]
    #   compare = right[0]
    #   if first > compare
    #     @sorted << compare
    #     @sorted << first
    #   else
    #     @sorted << first
    #     @sorted << compare
    #   end
    # else
    #   split_array(left)
    # end

  end

end
