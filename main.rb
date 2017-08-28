require './player'
require './game'

p1 = Player.new('Alice', 1)
p2 = Player.new('Bob', 2)

new_game = Game.new

new_game.start(p1, p2)