

t1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

t2 = [3, 2, 1, 4, 8]


t1.each do |i|
  count = 0
  t2.each do |j|
    if i.include?(j)
      count += 1
    end
  end
  if count == 3
    p true
  end
end