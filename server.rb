require_relative 'autoload'

require 'singleton'

class Server
  include ::Singleton

  def initialize
    $current_state = State.new
    s = GRPC::RpcServer.new
    s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
    Dir["#{File.dirname(__FILE__)}/lib/protobuf_services/*.rb"].each do |f|
      s.handle(Kernel.const_get("#{f.split('/').last.split('_').first.capitalize}::Codebreaker::Service"))
    end
    s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
  end

end

Server.instance
