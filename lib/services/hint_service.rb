class HintService
  def self.call
    new.call
  end

  def call
    $current_state.game.hint.to_s
  end
end
