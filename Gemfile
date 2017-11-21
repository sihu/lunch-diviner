source 'https://rubygems.org'
ruby File.read('.ruby-version').strip

gem 'slack-ruby-bot', git: 'https://github.com/dblock/slack-ruby-bot.git'
gem 'figaro'
gem 'puma'
gem 'sinatra'
gem 'dotenv'
gem 'celluloid-io'
gem 'nokogiri'

group :development, :test do
  gem 'rake'
  gem 'foreman'
  gem 'rspec'
end

# slack-ruby-bot/rspec dependencies:
group :test do
  gem 'rack-test'
  gem 'vcr'
  gem 'webmock'
end
