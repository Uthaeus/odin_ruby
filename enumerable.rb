module Enumerable
  def my_each
    x = 0
    self.length.times do
      yield self[x]
      x += 1
    end
  end

  def my_each_with_index
    x = 0
    self.length.times do
      yield self[x], x 
      x += 1
    end
  end

  def my_select
    out = []
    x = 0
    self.length.times do 
      if yield(self[x]) == true
        out << self[x]
      end
      x += 1
    end
    out
  end

  def my_all?
    
  end
end


t1 = [1, 2, 3, 4, 4, 5]

# t1.my_each {|x| p x}
# t1.my_each {|x| print x * x}

# t1.my_each_with_index {|x, y| puts "#{x}: #{y}"}
temp = t1.my_select {|y| y % 2 == 0}
p temp