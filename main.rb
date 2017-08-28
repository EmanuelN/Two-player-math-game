require './player'
require './game'

p1 = Player.new('Alice', 1)
p2 = Player.new('Bob', 2)

while p1.health > 0 && p2.health > 0
  new_game = Game.new
  puts new_game.round(p1, "What is 2+2?", 4)
  if p1.health > 0
    puts new_game.round(p2, "What is 2+3", 5)
  else
    puts "#{p2.name} wins!"
  end
  if p2.health == 0
    puts "#{p1.name} wins!"
  end

end
