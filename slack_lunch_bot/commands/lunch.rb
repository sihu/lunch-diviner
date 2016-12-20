# frozen_string_literal: true
require_relative '../../lib/lunch_diviner'

module SlackLunchBot
  module Commands
    class Lunch < SlackRubyBot::Commands::Base
      command 'I miss you!' do |client, data, _match|
        client.message text: "That's an unilateral statement...", channel: data.channel
      end

      command 'reishauer?' do |client, data, _match|
        a = LunchDiviner.new
        client.message text: a.slack_formatted_menu, channel: data.channel
      end
    end
  end
end
