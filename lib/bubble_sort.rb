require 'pry'

class BubbleSort

  def sort(array)
    array.flatten!
    a_length = array.length
    loop do
      swap = false
      (a_length - 1).times do |index|
        if array[index] > array[index + 1]
          swap!(array, index, (index + 1))
          swap = true
        end
      end
      a_length -= 1
      break if swap == false
    end
    array
  end

  def swap!(array, a, b)
    array[a], array[b] = array[b], array[a]
    array
  end

end
