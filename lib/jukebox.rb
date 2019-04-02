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
  song_name = gets.chomp
  for name in songs
    if name ==song_name
  puts "playing #{song_name}"
  return
    else
  puts "Invalid input, please try again"
    end

  end

end

play(songs)
