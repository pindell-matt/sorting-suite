require 'pry'

class InsertionSort

  def sort(array)
    array.flatten!
    (array.length).times do |i|
      value = array[i]
      key = (i - 1)
      while key >= 0 && array[key] > value
        array[key + 1] = array[key]
        key -= 1
      end
      array[key + 1] = value
    end
    array
  end

end
