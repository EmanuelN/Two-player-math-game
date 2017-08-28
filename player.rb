class Player
  attr_accessor :health
  attr_reader :name

  def initialize(my_name)
    @name = my_name
    @health = 3
  end

  def quiz(question)
    puts "It's your turn, #{@name}"
    puts question
    answer = gets.chomp
    return answer.to_i
  end

  def damage
    @health -= 1
  end
end
