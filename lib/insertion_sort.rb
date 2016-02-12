require 'pry'

class InsertionSort
  attr_reader :turns

  def sort(array)
    @turns = 0
    array.flatten!
    (array.length).times do |iter|
      current = array[iter]
      previous = (iter - 1)
      while previous >= 0 && array[previous] > current
        array[previous + 1] = array[previous]
        previous -= 1
      end
      array[previous + 1] = current
      @turns += 1
    end
    array
  end


end
