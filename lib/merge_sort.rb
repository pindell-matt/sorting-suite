require 'pry'

class MergeSort

  def sort(array)
    array.flatten!
    return array if array.count <= 1
    left  = []
    right = []
    (array.count).times do |i|
      if i.odd?
        left << array[i]
      else
        right << array[i]
      end
    end
    left  = sort(left)
    right = sort(right)
    merge(left, right)
  end

  def merge(left, right)
    result = []
    while !left.empty? && !right.empty?
      if left.first <= right.first
        result << left.shift
      else
        result << right.shift
      end
    end

    while !left.empty?
      result << left.shift
    end

    while !right.empty?
      result << right.shift
    end
    result
  end

end
