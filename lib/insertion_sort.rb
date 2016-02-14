require 'pry'

class InsertionSort

  def sort(array)
    array.flatten!
    1.upto(array.length - 1) do |i|
      j = i
      while j > 0 && array[j - 1] > array[j]
        array[j], array[j - 1] = array[j - 1], array[j]
        j -= 1
      end
    end
    array
  end

  def inplace_sort(array)
    array.flatten!
    (array.length).times do |i|
      value = array[i]
      key   = (i - 1)
      while key >= 0 && array[key] > value
        array[key + 1] = array[key]
        key -= 1
      end
      array[key + 1] = value
    end
    array
  end

end
