class State
  attr_reader :game

  def initialize
    @game = nil
  end

  def set_game(player, complexity)
    @game = Codebreaker::Game.new(player, complexity)
  end
end