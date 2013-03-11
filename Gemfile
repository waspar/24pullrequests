source 'http://rubygems.org'
ruby "2.0.0"

gem 'rails', '4.0.0.beta1'
gem 'pg'
gem 'unicorn'
gem 'foreman'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-twitter'
gem "haml", "~> 4.0.1.rc.1"
gem 'haml-rails'
gem 'octokit'
gem "bugsnag"
gem 'rabl'
gem 'newrelic_rpm'
gem 'simplecov'
gem 'kaminari'
gem 'twitter'
gem 'jquery-rails'#, '2.1.4'
gem "less-rails"
gem "twitter-bootstrap-rails"#, '2.2.4'
gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'
gem 'rack-google-analytics'
gem 'protected_attributes'
gem 'sass-rails', "~> 4.0.0.beta1"
gem "coffee-rails", "~> 4.0.0.beta1"

group :assets do
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

  # Auto testing
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'ruby_gntp'
  gem 'rb-fsevent', '~> 0.9.1'

  # Javascript
  gem 'konacha'
  # gem 'chai-jquery-rails'
  gem 'sinon-chai-rails'
  gem 'sinon-rails'
  gem 'ejs'
end

group :test do
  gem "capybara", '1.1.4'
  gem "database_cleaner", "~> 1.0.0.RC1"
  gem 'shoulda-matchers'
  gem 'webmock', :require => false
  gem 'poltergeist'
  gem 'timecop'
end

group :production do
  gem 'memcachier'
  gem 'dalli'
end
