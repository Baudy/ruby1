#if statements
ismale = false
istall = true

if ismale and istall
  puts "you are a tall male"
elsif ismale and !istall #exclamation mark for not
  puts "you are a short male"
elsif !ismale and istall
  puts "you are tall, but not male"
else
  puts "you are not male"
end

if ismale or istall
  puts "you are a tall male"
else
  puts "you are not male"
end

puts ""
puts "-------------------"
puts ""

def max(num1, num2, num3)
  if num1 >= num2 and num1 >= num3
    return num1
  elsif num2 >= num1 and num2 >= num3
    return num2
  else
    return num3
  end
end

puts max(11,22,33)

#example using case
def get_day_name(day)
  day_name = ""
  case day
  when "mon"
    day_name = "Monday"
  when "tue"
    day_name = "Tuesday"
  when "wed"
    day_name = "Wednesday"
  when "thu"
    day_name = "Thursday"
  when "fri"
    day_name = "Friday"
  when "sat"
    day_name = "Saturday"
  when "sun"
    day_name = "Sunday"
  else
    day_name = "Invalid abbreviation"
  end
  return day_name
end

puts "Enter a day abbreviation: "
day = gets.chomp()
puts get_day_name(day)
