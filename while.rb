#while loops
index = 1
while index <= 5
  puts index
  index += 1 # adds the number to the variable
end


#building a guessing game
secret_word = "giraffe"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    puts ("You have " + (guess_limit - guess_count).to_s + " tries remaining.  Enter your guess: ")
    guess = gets.chomp()
    guess_count += 1
  else
    out_of_guesses = true
  end
end

if out_of_guesses
  puts "You lose!"
else
  puts "You Won!"
end
