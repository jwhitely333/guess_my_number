# Guess My Number Game
# Written by : James Whitely

puts "Welcome to 'Get My Number!'"
print "What's your name? "

input = gets

name = input.chomp
puts "Welcome, #{name}!"

# Stores a random number for the player to guess

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track the number of guesses
num_guesses = 0

# Track if the player has gussed correctly
guessed_it = false
while num_guesses < 10 && guessed_it == false
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess : "
  guess = gets.to_i
  num_guesses += 1

# Comparison of guesses
# Print appropriate message
  if guess < target
    puts "Nope. Your guess is too LOW."
  elsif guess > target
    puts "Nope. Your guess is too HIGH."
  elsif guess == target
    puts "You Got It #{name}!!!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end
unless guessed_it
  puts "Sorry . You didn't guess my number. It was #{target}."
end
