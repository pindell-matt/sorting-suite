require 'pry'

class BubbleSort

  def sort(array)
    array.flatten!
    a_length = array.length
    swapped = true
    until !swapped
      swapped = false
      (a_length - 1).times do |index|
        if array[index] > array[index + 1]
          swap!(array, index, (index + 1))
          swapped = true
        end
      end
      a_length -= 1
    end
    array
  end

  def swap!(array, a_index, b_index)
    array[a_index], array[b_index] = array[b_index], array[a_index]
    array
  end

end
