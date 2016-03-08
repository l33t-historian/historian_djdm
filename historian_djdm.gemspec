# -*- encoding: utf-8 -*-
DM_VERSION    = '~> 1.2.0'

Gem::Specification.new do |s|
  s.name              = 'historian_djdm'
  s.summary           = 'Historian Version: DataMapper backend for delayed_job'
  s.version           = '1.0.1'
  s.authors           = 'Brandon Keepers'
  s.date              = Date.today.to_s
  s.email             = 'brandon@collectiveidea.com'
  s.extra_rdoc_files  = ["LICENSE", "README.md"]
  s.files             = Dir.glob("{lib,spec}/**/*") + %w[LICENSE README.md]
  s.homepage          = 'http://github.com/l33t-historian/historian_djdm'
  s.rdoc_options      = ['--charset=UTF-8']
  s.require_paths     = ['lib']
  s.test_files        = Dir.glob('spec/**/*')

  s.add_runtime_dependency      'dm-core',                    DM_VERSION
  s.add_runtime_dependency      'dm-observer',                DM_VERSION
  s.add_runtime_dependency      'dm-aggregates',              DM_VERSION
  s.add_runtime_dependency      'delayed_job',  '~> 2.1'
  s.add_development_dependency  'rspec',        '>= 1.2.9'
end
