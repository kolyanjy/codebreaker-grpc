
# Source: guess.proto for package 'guess'

module Guess
  module Codebreaker
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'guess.Codebreaker'

      rpc :Guess, ::Guess::Request, ::Guess::Reply

      def guess(request_args, _unused_call)
        Guess::Reply.new(answer: ::GuessService.call(request_args))
      end
    end
  end
end
