ENV.update YAML.load_file('config/application.yml')

require 'slack-ruby-bot'
require 'slack_lunch_bot/commands/lunch'
require 'slack_lunch_bot/bot'
