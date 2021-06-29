class Router
  include GRPC::GenericService

  self.marshal_class_method = :encode
  self.unmarshal_class_method = :decode
  self.service_name = 'Codebreaker'
  rpc :Registration, ::RegistrationPb::Request, ::RegistrationPb::Reply

  def registration(request_args, _unused_call)
    RegistrationPb::Reply.new(message: RegistrationService.call(request_args))
  end
end
