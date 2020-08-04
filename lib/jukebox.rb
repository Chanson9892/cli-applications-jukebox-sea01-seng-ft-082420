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

#lists help commands
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#adds a number to each song on the list and prints them out
def list(songs)
  songs.each.with_index(1) do |song, i|
    puts "#{i}. #{song}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  # user input
  user_song = gets.strip
  found_song = ""
  #tests to see if the user inputed song is a song on the list
  songs.each do |song|
    if song.include? user_song
      found_song = user_song
    end
  end
  if found_song.to_i.to_s == user_song && user_song.to_i <= songs.length - 1
    num = user_song.to_i - 1
    puts "Playing #{songs[num]}"
  elsif found_song != ""
    puts "Playing #{found_song}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  elsif user_input == "exit"
    exit_jukebox
  end
end
