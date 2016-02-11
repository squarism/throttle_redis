# can you throttle sidekiq outside of perform?

require 'sidekiq'
require 'sidekiq-ent'

require_relative '../number_counter'

Sidekiq.configure_client do |config|
    config.redis = { :namespace => 'test', :size => 1 }
end

# Sidekiq server is multi-threaded so our Redis connection pool size defaults
# to concurrency (-c)
Sidekiq.configure_server do |config|
  config.redis = { :namespace => 'test' }
end

