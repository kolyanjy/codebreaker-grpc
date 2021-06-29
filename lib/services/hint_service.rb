class GuessService
  def self.call
    new.call
  end

  def call
    $current_state.game.hint
  end
end
