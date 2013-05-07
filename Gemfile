source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '4.0.0.rc1'

gem 'jquery-rails', '2.1.4'

gem 'pg'
gem 'unicorn'
gem 'foreman'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-twitter'
gem 'haml-rails'
gem 'octokit'
gem "bugsnag"
gem 'rabl'
gem 'haml', '~> 4.0.0'
gem 'newrelic_rpm'
gem 'simplecov'
gem 'kaminari'
gem 'twitter'
gem "less-rails"
gem "twitter-bootstrap-rails"
gem 'simple_form', '~> 3.0.0.beta1'
gem 'rack-google-analytics'
gem 'protected_attributes'

group :assets do
  gem 'sass-rails', "~> 4.0.0.rc1"
  gem 'coffee-rails', "~> 4.0.0.rc1"
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier'
end

group :development do
  gem 'thin'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'brakeman'

  # Auto testing
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'ruby_gntp'
  gem 'rb-fsevent'

  # Javascript
  gem 'konacha'
  # gem 'chai-jquery-rails'
  gem 'sinon-chai-rails'
  gem 'sinon-rails'
  gem 'ejs'
end

group :test do
  gem "capybara", '2.0.2'
  gem 'capybara-webkit'
  gem 'launchy'

  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock', :require => false
  gem 'poltergeist'
  gem 'timecop'
  gem 'minitest'
end

group :production do
  gem 'memcachier'
  gem 'dalli'
end
