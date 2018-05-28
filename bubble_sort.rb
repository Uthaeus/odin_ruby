

class Array
  def bubble_sort 
    n = self.length

    loop do 
      swapped = false

      (n - 1).times do |i|
        if self[i] > self[i + 1]
          self[i], self[i + 1] = self[i + 1], self[i]
          swapped = true
        end
      end
      break if not swapped
    end
    self
  end
end

p [4,3,78,2,0,2].bubble_sort