Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'registration.Request' do
    optional :name, :string, 1
    optional :complexity, :string, 2
  end

  add_message 'registration.Reply' do
    optional :message, :string, 1
  end
end

module RegistrationPb
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup('registration.Request').msgclass
  Reply = Google::Protobuf::DescriptorPool.generated_pool.lookup('registration.Reply').msgclass
end
