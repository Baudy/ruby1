puts "Hello, World!"

character_name = "Tim"
character_age = "45"
puts ("There once was a man named " + character_name)
puts ("he was " + character_age + " years old.")
puts ("He really liked the name " + character_name)
puts ("but didn't like being " + character_age + ".")
puts ""

phrase = "Tim is learning ruby"
puts phrase.upcase()
puts phrase.downcase()
puts phrase.strip() #removes leading and trailing white space
puts phrase.length()
puts phrase.include? "Tim"
puts phrase.include? "George"
puts phrase[0,3]
puts (phrase[7,5] + " " + phrase[16,4])
puts phrase.reverse()
puts phrase.index("l")
puts "enough string manipulation now".upcase()
