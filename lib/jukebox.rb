# Add your code here
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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  song_request = gets.strip
  if songs.include?(song_request)
    puts "Playing #{song_request}"
  elsif !songs.include?(song_request) && song_request.to_i > songs.length
    puts "Invalid input, please try again"
  elsif song_request.to_i < songs.length && song_request.to_i > 0 
    index = song_request.to_i - 1
    puts "Playing #{songs[index]}"
  else 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|item, index| puts "#{index + 1}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  exit_jukebox if command == "exit"
  while command != "exit" do
    if command == "list"
      list(songs)
      command = nil
    elsif command == "help"
       help 
       command = nil
    elsif command == "play"
      play(songs)
      command = nil
    end
  end
end
