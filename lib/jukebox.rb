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

def help
	print "\nI accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program\n"
end

def list(songs)
	for x in (0..songs.size-1) do
		print "\n#{x+1}. #{songs[x]}"
	end
	print "\n"
end

def play(songs)
	print "\nPlease enter a song name or number: "
	track=gets.chomp
	if songs.include?(track) || (1..songs.size).include?(track.to_i)
		play_song(track, songs)
	else
		puts "\nInvalid input, please try again"
	end
end

def play_song(track, songs)
	if (1..songs.size).include?(track.to_i)
		puts "Now playing:  #{songs[track.to_i-1]}"
	else
		puts "Now playing:  #{track}"
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
