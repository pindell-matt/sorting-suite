require 'pry'

class BubbleSort

  def sort(array)
    array.flatten!
    a_length = array.length
    loop do
      swap = false
      (a_length - 1).times do |index|
        if array[index] > array[index + 1]

          smaller = array[index + 1]
          larger  = array[index]

          array[index]      = smaller
          array [index + 1] = larger

          swap = true
        end
      end
      a_length -= 1
      break if swap == false
    end
    array
  end

end
