require 'pry'

def menu
  puts 'Press 1 to build a lunch'
  choice = gets.slice
  when '1'
    build_lunch
end
