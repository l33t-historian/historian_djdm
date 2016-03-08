# delayed_job DataMapper backend

## Installation

Add the gems to you Gemfile:

  gem 'delayed_job', '2.1.0.pre2'
  gem 'delayed_job_data_mapper', '1.0.0.rc'

Add this in an initializer:

    # config/initializers/delayed_job.rb
    Delayed::Worker.backend.auto_upgrade!

That's it. Use [delayed_job as normal](http://github.com/collectiveidea/delayed_job).


## Publishing this old gem

```
$> rake build
>>> Building historian_djdm-1.0.1.gem ...
$> rake release
>>> Tagging v1.0.1 ...
```

```
$>  cat ~/.gem/credentials
---
:rubygems_api_key: XXXXXXXXXXXXXXXXXXXXXXXXXXXXX
:historian_api_key: YYYYYYYYYYYYYYYYYYYYYYYYYYY
```

```
$> gem push -k historian_api_key pkg/historian_djdm-1.0.1.gem
```
