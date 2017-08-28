require './question'

class Game

  def round(player, question, answer)
    if (player.quiz(question) == answer)
      return "Good Job!"
    else
      player.damage
      return "Sorry, that's wrong! Your health is now #{player.health}/3."
    end
  end

  def start(p1, p2)
    generator = QuestionGenerator.new
    iterator = 1
    while p1.health > 0 && p2.health > 0
      q1 = generator.new_question
      puts "Round #{iterator}"
      puts round(p1, q1[0], q1[1])
      if p1.health > 0
        q2 = generator.new_question
        puts round(p2, q2[0], q2[1])
      else
        puts "#{p2.name} wins!"
      end
      if p2.health == 0
        puts "#{p1.name} wins!"
      end
      iterator += 1
    end
  end

end