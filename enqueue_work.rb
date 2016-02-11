require 'securerandom'
require 'faker'

require_relative './number_counter'


Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'test', :size => 1 }
end

NumberCounter.perform_async(10, Faker::Name.first_name)
