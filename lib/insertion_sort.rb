require 'pry'

class InsertionSort

  def sort(array)
    array.flatten!
    (array.length).times do |i|
      value = array[i]
      prev = (i - 1)
      while prev >= 0 && array[prev] > value
        array[prev + 1] = array[prev]
        prev -= 1
      end
      array[prev + 1] = value
    end
    array
  end

end
