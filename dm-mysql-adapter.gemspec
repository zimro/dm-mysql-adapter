# encoding: utf-8

require File.expand_path('../lib/dm-mysql-adapter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'dm-mysql-adapter'
  gem.summary     = 'MySQL Adapter for DataMapper'
  gem.description = gem.summary
  gem.email       = 'dan.kubb@gmail.com'
  gem.homepage    = 'http://datamapper.org'
  gem.authors     = [ 'Dan Kubb' ]

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[ LICENSE ]

  gem.require_paths = %w[ lib ]
  gem.version       = DataMapper::MysqlAdapter::VERSION

  gem.add_runtime_dependency('dm-do-adapter', [ '~> 1.3.0.beta' ])
  gem.add_runtime_dependency('do_mysql',      [ '~> 0.10.8'     ])

  gem.add_development_dependency('dm-migrations', [ '~> 1.3.0.beta' ])
  gem.add_development_dependency('rake',          [ '~> 0.9.2'      ])
  gem.add_development_dependency('rspec',         [ '~> 1.3.2'      ])
end
