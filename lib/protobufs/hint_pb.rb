Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'hint.Request' do
  end

  add_message 'hint.Reply' do
    optional :hint, :string, 1
  end
end

module HintPb
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup('hint.Request').msgclass
  Reply = Google::Protobuf::DescriptorPool.generated_pool.lookup('hint.Reply').msgclass
end
