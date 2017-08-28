require './player'
require './game'

p1 = Player.new('Alice')
p2 = Player.new('Bob')

new_game = Game.new

new_game.start(p1, p2)