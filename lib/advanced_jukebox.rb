songs = {
"Go Go GO" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/andrew/Development/labs/jukebox-cli-atlanta-web-042219/audio/Emerald-Park/07.mp3'
}

def help
  print "\nI accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program\n"
end

def list(songs)
  songs.each{|song, fp|
    print "\n#{song}"
  }
  print "\n"
end


def play(songs)
  print "\nPlease enter a song name: "
  track=gets.chomp
  if songs.include?(track)
    system %{open "#{songs[track]}"}
  else
    puts "\nInvalid input, please try again"
  end
end

def run(songs)
  while true do
    print "\nPlease enter a command:  "
    input=gets.chomp

    if input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    elsif input == "help"
      help
    elsif input == "exit"
      puts "\nGoodbye"
      return nil
    else
      puts "\nInvalid input, please try again"
    end
  end
end

run(songs)
