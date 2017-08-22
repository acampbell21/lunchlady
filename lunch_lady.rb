require 'pry'

# class Lunchlady
#   attr_accessor :name, :cost
#
#   def initialize(name, cost)
#     @name = name
#     @cost = cost
#   end
#
#   def mystery_meat(name, cost)
#     @name = mystery meat
#     @cost = 5
#   end
#
#   def slop(name, cost)
#     @name = slop
#     @cost = 4
#     @name = test
#     @cost = 2
#   end
#
#   def hotdog(name, cost)
#     @name = hotdog
#     @cost = 3
#   end
#
#   def total(number)
#     @cost += number
#   end
#
# end

myster meat name = @maindishes[0][:name]
myster meat price = @maindishes[0][:cost]
@maindishes = [
  { name: 'mystery meat', cost: 5},
  { name: 'slop', cost:4},
  { name: 'hotdog', cost:3}
]
@sidedishes = [
  { name: 'mac', cost: 3},
  { name: 'coleslaw', cost:  2},
  { name: 'fries', cost: 1}
]
@lunch = []

def menu
  puts 'Press 1 to build a lunch'
  puts 'Type QUIT to leave'
  choice = gets.chomp.to_i
  menu_options(choice)
end

def menu_options(choice)
  case choice
  when 1
    build_lunch
  when 'QUIT'
    exit
  else
    puts 'Try again'
  end
end

def build_lunch
  puts 'What would you like to add to your lunch'
  # puts 'Mystery Meat, Slop, Hotdog'
  @maindishes.each do |item, index|
    puts "item #{index ++ 1}: #{item[:name]} is #{item[:cost]}"
      end
  user_input = gets.chomp
  @lunch << @maindishes
  @lunch do |item, index|
    puts "item #{item[:cost]}"
    end
  puts @lunch
  menu
end

menu
