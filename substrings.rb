
def subs str, dict
  result = {}
  dict.each do |i|
    
    if str.include?(i)
      if result[i]
        result[i] += 1
      else
        result[i] = 1
      end
    end
  end
  return result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p subs('below', dictionary)
p subs("Howdy partner, sit down! How's it going?", dictionary)