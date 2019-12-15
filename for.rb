#for loops

friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]

for friend in friends
  puts friend
end

puts "-------------"

friends.each do |friend|
  puts friend
end

puts "-------------"

#exponent methods
#takes two numbers and powers the first by the second
def pow(base_num, pow_num)
  result = 1
  pow_num.times do |index| #index can be used as a variable to hold the counter, but is not mandatory
    result = result * base_num
    #puts (index.to_s + " = " + result.to_s)  #uncomment this if you want to watch the counts
  end
  return result
end

puts pow(5, 12)
