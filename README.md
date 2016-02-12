## Limit the Enterprise

:enterprise_software_in_flames.jpg:

Sidekiq Enterprise rate limitin' spike.
Can you use the limit feature outside of perform method
in a plain-ol-ruby project?  Especially the `.delay` style?

Limiting is not throttling!  But we want limiting.

## Running

You need the Sidekiq Enterprise gem.  It's not free.  I'm sorry.

Subject to who knows.  There should hopefully be a tag showing
vanilla sidekiq behavior versus the sidekiq-enterprise throttling
feature.

    bundle install  (this will fail if you have never installed sidekiq-ent before)

    # run three of these in three different terminals
    be rake work

    # run this a few times, as much as you want to queue up work
    be rake enqueue

It's rate limited to two at a time.  You'll see two people counting.

