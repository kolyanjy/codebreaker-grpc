require 'codebreaker'
require 'grpc'
require 'pry'
require 'google/protobuf'

require_relative 'registration_pb'
# require_relative 'lib/protobufs/registration_pb'
require_relative 'lib/protobufs/guess_pb'
require_relative 'lib/protobufs/hint_pb'
require_relative 'lib/protobufs/statistic_pb'
require_relative 'lib/services/registration_service'
require_relative 'registration_services_pb'
require_relative 'lib/services/hint_service'
require_relative 'lib/services/statistic_service'
require_relative 'lib/services/guess_service'
require_relative 'lib/state'
require_relative 'lib/router'
