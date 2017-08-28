class Game

  def round(player, question, answer)
    if (player.quiz(question) == answer)
      return "Good Job!"
    else
      player.damage
      return "Sorry, that's just wrong!"
    end
  end

end