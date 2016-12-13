# frozen_string_literal: true
require_relative '../../lib/lunch_diviner'
require_relative '../../lib/groupador'

module SlackLunchBot
  module Commands
    class Lunch < SlackRubyBot::Commands::Base
      command 'reishauer?' do |client, data, _match|
        a = LunchDiviner.new
        client.message(text: a.slack_formatted_menu, channel: data.channel)
      end

      command 'groups?' do |client, data, _match|
        users = %w(benjaminboehm felixkubli matthias pandermatt rbuetzer samuel schmijos lunchbot alessandro alicia
                   alyssa amina digi martin nick rroger sihu stephane zora)

        g = Groupador.new(users)
        client.message(text: g.slack_formatted_groups(6), channel: data.channel)
      end
    end
  end
end
