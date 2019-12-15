

lucky_nums = [4, 8, 15, 16, 23, 42]

#handy ways to break your code
#lucky_nums["dog"]
#num = 10 / 0

begin
  #num = 10 / 0
  lucky_nums["dog"]
rescue ZeroDivisionError
  puts "Div by zero error"
rescue TypeError => e
  puts "wrong type"
  puts e
end
