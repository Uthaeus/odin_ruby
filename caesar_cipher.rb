

def cipher str, num
  text = ''
  str_arr = str.split('')

  str_arr.each do |i|
    if i == ' '
      text += ' '
    elsif i.ord >=65 && i.ord <= 90
      if i.ord + num > 90
        i = ((i.ord + num) % 90) + 64
        text += i.ord.chr 
      else
        i = i.ord + num
        text += i.ord.chr 
      end
    elsif i.ord >= 97 && i.ord <= 122
      if i.ord + num > 122
        i = ((i.ord + num) % 122) + 96
        text += i.ord.chr
      else 
        i = i.ord + num
        text += i.ord.chr 
      end
    else
      i = i.ord + num 
      text += i.ord.chr 
    end

  end

  return text
end

# t1 = 'this is a test'
# t2 = 'This is Another Test Here'
# t3 = 'Does this ignore 345 numbers?'


# cipher(t1, 3)
# cipher(t2, 7)
# cipher(t3, 4)


puts "Welcome to the Caesar Cipher"
puts
sleep 0.5
puts "Enter your message:"
message = gets.chomp
puts
puts "Enter a number to offset your code:"
offset = gets.chomp.to_i

result = cipher(message, offset)

puts
puts result













