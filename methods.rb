#methods
def sayhi(name="default name", age=0)
  puts ("Hello, " + name)
  puts ("Bad luck being " + age.to_s)
end

sayhi("Tim", 45)
sayhi

puts ""
puts "-------------------"
puts ""

#method with a return
def cube(num)
  return num, num * num, num * num * num
  # nothing executes after the return statement
  # you can return multuple numbers using comma to separate them
end

puts cube(3)
