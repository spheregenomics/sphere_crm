source 'https://rubygems.org'


gem 'unicorn'
gem 'pg'



# Remove premailer auto-require
gem 'premailer', require: false



group :development do
   
    gem 'capistrano', '~> 3.1'
    gem 'capistrano-rails', '~> 1.1.1'
    gem 'capistrano-bundler'
    gem 'capistrano-rbenv', '~> 2.0'
    gem 'capistrano-unicorn-nginx', '~> 2.0'
    gem 'capistrano-postgresql', '~> 3.0'

  
    gem 'guard'
    gem 'guard-rspec'
    gem 'guard-rails'
    gem 'rb-inotify', require: false
    gem 'rb-fsevent', require: false
    gem 'rb-fchange', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'headless'
  gem 'pry-rails' 
  gem 'factory_girl_rails'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem "acts_as_fu"
  gem 'zeus' 
  gem 'timecop'
end


gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'execjs'
gem 'therubyracer', platform: :ruby 
