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
    status, msg = RegistrationService.call(request_args)

    raise GRPC::BadStatus.new(GRPC::Core::StatusCodes::INVALID_ARGUMENT, msg) if status == :failure

    RegistrationPb::Reply.new(message: msg)
  end

  def guess(request_args, _unused_call)
    status, msg = GuessService.call(request_args)

    raise GRPC::BadStatus.new(GRPC::Core::StatusCodes::INVALID_ARGUMENT, msg) if status == :failure

    GuessPb::Reply.new(answer: msg)
  end

  def hint(_request_args, _unused_call)
    HintPb::Reply.new(hint: GuessService.call)
  end

  def statistic(_request_args, _unused_call)
    StatisticPb::Reply.new(statistic: StatisticService.call)
  end
end
