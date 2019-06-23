# Add your code here
require 'pry'

#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#make sure to edit the value of each key to replace /Users/dburne200/flatiron
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }
my_songs = {
  "Go Go GO" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/dburne200/flatiron/jukebox-cli-001-prework-web/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.keys.each do |song|
    puts song
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
@@ -33,13 +38,39 @@ def play(my_songs)
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

  puts "Please enter a song name"
  user = gets.chomp
  if my_songs.keys.include?(user)
    song = my_songs[user]
    system "open #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
def run(songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end

run(my_songs)
