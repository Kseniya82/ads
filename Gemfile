# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'rake', '~> 13.0', '>= 13.0.1'
gem 'puma', '~> 4.3', '>= 4.3.5'

gem 'roda', '~> 3.33'
gem 'roda-symbolized_params', '~> 0.0.2'

gem 'i18n', '~> 1.8', '>= 1.8.3'
gem 'config', '~> 2.2', '>= 2.2.1'

gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'sequel', '~> 5.33'

gem 'dry-initializer', '~> 3.0', '>= 3.0.3'
gem 'dry-validation', '~> 1.5', '>= 1.5.1'

gem 'activesupport', '~> 6.1', require: false
gem 'fast_jsonapi', '~> 1.5'

# gem 'rack-unreloader', require: false

group :development do
  gem 'pry-byebug', '~> 3.9'
end

group :test do
  gem 'rspec', '~> 3.9'
  gem 'factory_bot', '~> 6.0', '>= 6.0.2'
  gem 'rack-test', '~> 1.1'
  gem 'database_cleaner-sequel', '~> 1.8'
end

