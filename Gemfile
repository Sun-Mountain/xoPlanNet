source "https://rubygems.org"

ruby "3.1.2"
gem "rails", "~> 7.1.2"
gem "sprockets-rails"
# Postgres is our default database [https://www.postgresql.org]
gem "pg", "~> 1.1"
# GraphQL is our default API [https://graphql.org]
gem 'graphql', '~> 2.1'
gem 'devise'
gem 'devise_token_auth', '>= 1.2.0', git: "https://github.com/lynndylanhurley/devise_token_auth"
gem 'graphql_devise'
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "dotenv", "~> 2.8"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem "bootsnap", require: false
gem 'sassc-rails'
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem 'pry'
  gem 'pry-nav'
end

group :development do
  gem 'graphiql-rails'
  gem 'web-console'

  gem 'rubocop', '~> 1.58'
  gem 'rubocop-performance', '~> 1.19'
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
