# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: statistic.proto


Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("statistic.proto", :syntax => :proto3) do
    add_message "statistic.Request" do
    end
    add_message "statistic.Reply" do
      repeated :statistic, :message, 1, "statistic.Item"
    end
    add_message "statistic.Item" do
      optional :name, :string, 1
      optional :attempts, :int32, 2
      optional :hints, :int32, 3
      optional :level, :string, 4
      optional :date, :string, 5
    end
  end
end

module StatisticPb
  Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("statistic.Request").msgclass
  Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("statistic.Reply").msgclass
  Item = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("statistic.Item").msgclass
end