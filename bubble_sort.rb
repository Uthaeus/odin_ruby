

# class Array
#   def bubble_sort 
#     n = self.length

#     loop do 
#       swapped = false

#       (n - 1).times do |i|
#         if self[i] > self[i + 1]
#           self[i], self[i + 1] = self[i + 1], self[i]
#           swapped = true
#         end
#       end
#       break if not swapped
#     end
#     self
#   end
# end

# p [4,3,78,2,0,2].bubble_sort


def bubble_sort arr 
  n = arr.length

  loop do 
    swapped = false
    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr 
end

def bubble_sort_by arr 
  n = arr.length - 1

  loop do 
    swapped = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  p arr 
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end









