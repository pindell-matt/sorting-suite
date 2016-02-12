require 'pry'

class InsertionSort

  # def sort(array)
  #   array.flatten!
  #   a_length = array.length
  #   (a_length - 1).times do |iter|
  #     count = iter
  #     while iter >= 0 && array[iter] > array[iter + 1]
  #       smaller = array[iter + 1]
  #       larger  = array[iter]
  #
  #       array[iter]     = smaller
  #       array[iter + 1] = larger
  #       count -= 1
  #     end
  #   end
  #   array
  # end

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
