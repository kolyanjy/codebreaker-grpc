Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'guess.Request' do
    optional :guess, :string, 1
  end

  add_message 'guess.Reply' do
    optional :answer, :string, 1
  end
end

module GuessPb
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup('guess.Request').msgclass
  Reply = Google::Protobuf::DescriptorPool.generated_pool.lookup('guess.Reply').msgclass
end
