
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("statistic.proto", :syntax => :proto3) do
    add_message "Request" do
    end
    add_message "Reply" do
      repeated :statistic, :message, 1, "Item"
    end
    add_message "Item" do
      optional :name, :string, 1
      optional :attempts, :int32, 2
      optional :hints, :int32, 3
      optional :level, :string, 4
      optional :date, :string, 5
    end
  end
end

module StatisticPb
  Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Request").msgclass
  Reply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Reply").msgclass
  Item = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Item").msgclass
end
