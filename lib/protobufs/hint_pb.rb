# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: hint.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("hint.proto", :syntax => :proto3) do
    add_message "hint.Request" do
    end
    add_message "hint.Reply" do
      optional :hint, :string, 1
    end
  end
end

module Hint
  Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hint.Request").msgclass
  Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("hint.Reply").msgclass
end
