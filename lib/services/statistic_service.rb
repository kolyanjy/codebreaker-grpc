class StatisticService
  def self.call
    new.call
  end

  def call
    Codebreaker::Wellcome.new.restore_storage
  end
end
