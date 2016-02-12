require 'pry'

class MergeSort

  def initialize
    @sorted = []
  end

  def sort(array)
    split_array(array)
    # binding.pry
  end

  # recursively split till count/length == 1
  def split_array(array)
    return array if array.count == 1
    center = (array.length / 2)
    left   = array.take(center)
    left.count == 1 ? first_num = left[0] : split_array(left)

    right  = array.drop(center)
    right.count == 1 ? second_num = right[0] : split_array(right)

    if first_num < second_num
      @sorted << first_num
      @sorted << second_num
    else
      @sorted << second_num
      @sorted << first_num
    end
    # binding.pry
  end


end
