require 'pry'

class BubbleSort

  def sort(array)
    total = array.length
    loop do
      swapped = false
      (total - 1).times do |index|
        if  array[index] > array[index + 1]
          array[index + 1], array[index] = array[index], array [index + 1]
          swapped = true
        end
      end
      total -= 1
      break if swapped == false
    end
    array
  end

end
