

def picker arr
  buy = 0
  sell = 0
  greatest_diff = 0
  x = 0
  while x < arr.length do 
    y = x + 1
    while y < arr.length do 
      diff = arr[y] - arr[x]
      if diff > greatest_diff
        buy = x
        sell = y
        greatest_diff = diff 
      end
      y += 1
    end
    x += 1
  end
  result = [buy, sell]
  return result
end


p picker([17,3,6,9,15,8,6,1,10])