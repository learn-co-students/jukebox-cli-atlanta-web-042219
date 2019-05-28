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

# puts "Enter your name:"
# user_name = gets.chomp
#
# puts say_hello(user_name)
#
# def say_hello(name)
#     "Hi #{name}!"
# end


def help
puts " I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end

def list(songs)
    songs.each_with_index do |title, index|
      index += 1
    puts "#{index}. #{title}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  selection = gets.chomp
  songs.each_with_index do |title, index|
    index += 1
    if selection == title || selection.to_i == index
      puts "Playing #{title}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
    case command
      when "help"
        list(songs)
      when "list"
        play(songs)
      when "play"
        help
      else
        exit_jukebox
  end
end
