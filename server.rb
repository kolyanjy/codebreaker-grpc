require_relative 'autoload'

class Server
  def self.run
    new
  end

  private_class_method :new

  def initialize
    $current_state = State.new
    s = GRPC::RpcServer.new
    s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
    s.handle(Router)
    s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT'])
  end
end

Server.run
