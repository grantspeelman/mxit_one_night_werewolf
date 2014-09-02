source 'https://rubygems.org'

# Project requirements
gem 'rake'
gem 'dotenv'

# Component requirements
gem 'erubis', '~> 2.7.0'
gem 'dm-postgres-adapter'
gem 'dm-validations'
gem 'dm-timestamps'
gem 'dm-migrations'
gem 'dm-constraints'
gem 'dm-aggregates'
gem 'dm-types'
gem 'dm-core'

# third party
gem 'staccato'

group 'production' do
  gem 'puma', require: false
  gem 'airbrake', '~> 3.1', require: false
end

group 'development' do
  gem 'rubocop', require: false
  gem 'capistrano', '~> 3.1', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', '~> 2.0'
end

# Test requirements
group 'test' do
  gem 'rspec'
  gem 'rack-test', require: 'rack/test'
  gem 'capybara'
end

# Padrino Stable Gem
gem 'padrino', '0.12.3'
