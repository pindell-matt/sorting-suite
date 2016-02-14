require 'pry'

class MergeSort

  def initialize
    @sorted = []
    @final = []
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

    left = split_array(@sorted)
      (left.flatten.count - 1).times do
      if left[1][0].nil?
        until left[0][0].nil?
          @final << left[0][0]
          left[0].shift
        end
      elsif left[0][0].nil?
        until left[1][0].nil?
          @final << left[1][0]
          left[1].shift
        end
      elsif left[0][0] > left[1][0]
        @final << left[1][0]
        left[1].shift
      elsif left[0][0] < left[1][0]
        @final << left[0][0]
        left[0].shift
      end
    end
    binding.pry
  end

  def split_array(array)
    return array if array.count == 1
    center = (array.length / 2)
    left   = array.take(center)

    if left.count == 2
      return left
    else
      split_array(left)
    end

  end

end
