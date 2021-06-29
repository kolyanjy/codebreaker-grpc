class Router
  include GRPC::GenericService

  self.marshal_class_method = :encode
  self.unmarshal_class_method = :decode
  self.service_name = 'Codebreaker'

  rpc :Registration, ::RegistrationPb::Request, ::RegistrationPb::Reply
  rpc :Guess, ::GuessPb::Request, ::GuessPb::Reply
  rpc :Hint, ::HintPb::Request, ::HintPb::Reply
  rpc :Statistic, ::StatisticPb::Request, ::HintPb::Reply

  def registration(request_args, _unused_call)
    RegistrationPb::Reply.new(message: RegistrationService.call(request_args))
  end

  def guess(request_args, _unused_call)
    GuessPb::Reply.new(answer: GuessService.call(request_args))
  end

  def hint(_request_args, _unused_call)
    HintPb::Reply.new(hint: GuessService.call)
  end

  def statistic(_request_args, _unused_call)
    StatisticPb::Reply.new(statistic: StatisticService.call)
  end
end
