require 'securerandom'
require 'faker'

require_relative './number_counter'

Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'test', :size => 1 }
end

class Tasker

  def self.create_fake_work(number_to_count_to=10)
    NumberCounter.perform_async(number_to_count_to, Faker::Name.first_name)
  end

end
