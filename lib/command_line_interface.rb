def welcome
  # puts out a welcome message here!
  puts "Welcome!"
end

def get_character_from_user
  puts "Please enter a character"
  # use gets to capture the user's input. This method should return that input, downcased.
    name =  gets.chomp.downcase
    Character.new(name)
end
