require 'pry'

class InsertionSort

  def sort(array)
    array.flatten!
    (array.length - 1).times do |iter|
      j = iter
      while j >= 0 && array[j] > array[j + 1]
        smaller = array[j + 1]
        larger  = array[j]

        array[j]     = smaller
        array[j + 1] = larger
        j -= 1
      end
    end
    array
  end

end
