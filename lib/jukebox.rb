require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
-help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index{|value, index| puts "#{index +1}. #{value}" }
end

# list(songs)

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.chomp
  songs.each_with_index do |song, i|
  # for name in song
  # binding.pry
    if user == song
        puts "playing #{song}"
        return
      elsif user.to_i == (i+ 1)
          puts "playing #{song}"
          return

      #   else
      #       puts "Invalid input, please try again"
     end
  end
        puts "Invalid input, please try again"

end

# play(songs)

def exit_jukebox
  puts "Goodbye"
end

# exit_jukebox

def run(songs)
  help
  user_response = " "
  while user_response != "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list(songs)
      elsif user_response == "play"
        play(songs)
      elsif user_response == "help"
        help
    end
  end
  exit_jukebox
end







 # run(songs)
