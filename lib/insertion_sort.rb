require 'pry'

class InsertionSort

  def sort(array)
    array.flatten!
    (array.length - 1).times do |iter|
      count = iter
      while count >= 0 && array[count] > array[count + 1]
        smaller = array[count + 1]
        larger  = array[count]

        array[count]     = smaller
        array[count + 1] = larger
        count -= 1
      end
    end
    array
  end

end
