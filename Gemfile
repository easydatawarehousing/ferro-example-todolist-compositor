source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'
gem 'sqlite3'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem "bootsnap", ">= 1.1.0", require: false

gem 'opal'
gem 'opal-ferro', '~> 0.10.2'

# Opal-rails is needed for sprockets. It includes
# opal-jquery but jquery is not loaded in application.js
gem 'opal-rails'

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end