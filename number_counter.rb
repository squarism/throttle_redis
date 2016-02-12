require 'sidekiq-ent'

COUNT_LIMITER = Sidekiq::Limiter.concurrent('number_counter', 2, wait_timeout: 5, lock_timeout: 30)


class NumberCounter
  include Sidekiq::Worker

  def perform(number_to_count_to, name)
    COUNT_LIMITER.within_limit do
      1.upto(number_to_count_to) do |i|
        puts "#{name} counting #{i}"
        sleep 1
      end
    end
  end

end

