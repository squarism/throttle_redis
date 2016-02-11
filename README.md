## Throttle the Enterprise

Sidekiq Enterprise throttlin spike.
Can you use the throttle feature outside of perform method
in a plain-ol-ruby project?  Especially the `.delay` style?

## Running

Subject to who knows.  There should hopefully be a tag showing
vanilla sidekiq behavior versus the sidekiq-enterprise throttling
feature.

    be sidekiq -r ./workers/main.rb  # run a worker (note default concurrency)
    be ruby enqueue_work.rb  # make up some load

You need the sidekiq-ent gem.  It's not free.  I'm sorry.

