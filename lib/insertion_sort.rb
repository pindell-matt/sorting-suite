require 'pry'

class InsertionSort

  def sort(array)

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

if __FILE__ == $0
  s = InsertionSort.new
  array = [3, 2, 4, 12, 1]
  puts s.inplace_sort(array).object_id == array.object_id
  puts s.inplace_sort(array)
end
