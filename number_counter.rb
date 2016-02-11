require 'sidekiq-ent'

class NumberCounter
  include Sidekiq::Worker

  def perform(number_to_count_to, name)
    1.upto(number_to_count_to) do |i|
      puts "#{name} counting #{i}"
      sleep 2
    end
  end

end

