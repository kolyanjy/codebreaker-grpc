class RegistrationService
  def self.call(request_args)
    new.call(request_args)
  end

  def call(request_args)
    if validate(request_args.name, 'name') && validate(request_args.complexity, 'complexity')
      $current_state.set_game(request_args.name, request_args.complexity)
      'Game started'
    else
      'you have 3 level "easy", "medium", "hard" for complexity, valid name must have 3-25 letters'
    end
  end

  private

  def validate(input, validator)
    Codebreaker::Wellcome.new.valid_input?(input, validator)
  end
end
