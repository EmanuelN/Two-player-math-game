class QuestionGenerator

  def new_question
    part1 = 1 + rand(20)
    part2 = 1 + rand(20)
    answer = part1 + part2
    question = "What is #{part1} + #{part2}?"
    return question, answer
  end

end