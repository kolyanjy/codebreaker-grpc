class GuessService
  def self.call(request_args)
    new.call(request_args)
  end

  def call(request_args)
    if validate(request_args.guess, 'guess')
      [:success, check_game_answer($current_state.game.guess(request_args.guess))]
    else
      [:failure, 'Guess invalid']
    end
  end

  private

  def check_game_answer(answer)
    case answer
    when :win then 'You Win'
    when :lose then 'You Lose'
    else
      answer
    end
  end

  def validate(input, validator)
    Codebreaker::Wellcome.new.valid_input?(input, validator)
  end
end
