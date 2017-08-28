require './player'
require './game'

puts "Player 1 name: "
p1_name = gets.chomp

puts "Player 2 name: "
p2_name = gets.chomp
p1 = Player.new(p1_name)
p2 = Player.new(p2_name)

new_game = Game.new

new_game.start(p1, p2)