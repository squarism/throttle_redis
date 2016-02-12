# run multiple of these
desc "A single worker"
task :worker do
  system "sidekiq -r ./workers/main.rb -c 1"
end


# then run this a few times
desc "Enqueue up some fake work for workers to pretend-work-on while their boss is looking"
task :enqueue do
  require_relative './enqueue_work'
  Tasker.create_fake_work
end
