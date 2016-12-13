# frozen_string_literal: true
require 'spec_helper'

describe SlackLunchBot::Commands::Lunch do
  def app
    SlackLunchBot::App.new
  end

  xit 'responds to reishauer?' do
    allow_any_instance_of(LunchDiviner).to receive(:new).and_return(double('LunchDiviner', slack_formatted_menu: 'bla'))
    expect(message: String.new('lunchbot reishauer?')).to respond_with_slack_message('bla')
  end

  xit 'responds to groups?' do
    allow_any_instance_of(Groupador).to receive(:new).and_return(double('LunchDiviner', slack_formatted_menu: 'bla'))
    expect(message: String.new('groups?')).to respond_with_slack_message('bla')
  end
end
