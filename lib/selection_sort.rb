require 'pry'

class SelectionSort

  def sort(array)
    array.flatten!
    return array if array.length <= 1
    0.upto(array.length - 1) do |j|
      iMin = j
      (j + 1).upto(array.length - 1) do |i|
        if array[i] < array[iMin]
          iMin = i
        end
      end
      if iMin != j
        array[j], array[iMin] = array[iMin], array[j]
      end
    end
    array
  end
end
