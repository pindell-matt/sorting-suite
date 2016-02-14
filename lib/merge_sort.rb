require 'pry'

class MergeSort

  def initialize
    @sorted = []
  end

  def sort(array)
    return array if array.flatten.count == 1
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

    processed = split_array(@sorted)
    penultimate = processed.select do |arr|
      !arr.empty?
    end

    final = process(penultimate).select do |arr|
      !arr.empty?
    end

    final.flatten!
  end

  def split_array(array)
    center = (array.length / 2)
    left   = array.take(center)
    right  = array.drop(center)

    left.count == 2 ? process(left) : split_array(left)
    right.count == 2 ? process(right) : split_array(right)
  end

  def process(array)
    result = []
    (array.flatten.count).times do
      if array[1][0].nil?
        until array[0][0].nil?
          result << array[0][0]
          array[0].shift
        end
      elsif array[0][0].nil?
        until array[1][0].nil?
          result << array[1][0]
          array[1].shift
        end
      elsif array[0][0] > array[1][0]
        result << array[1][0]
        array[1].shift
      elsif array[0][0] < array[1][0]
        result << array[0][0]
        array[0].shift
      end
    end
    @sorted << result
  end

end
