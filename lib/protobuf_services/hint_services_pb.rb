# Generated by the protocol buffer compiler.
# Source: hint.proto for package 'hint'

module Hint
  module Codebreaker
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'hint.Codebreaker'

      rpc :Hint, ::Hint::Request, ::Hint::Reply

      def hint(_request_args, _unused_call)
        Hint::Reply.new(hint: ::HintService.call)
      end
    end
  end
end
