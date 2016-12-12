require 'spec_helper'

describe SlackLunchBot::App do
  def app
    SlackLunchBot::App.new
  end

  context 'authenticated' do
    it_behaves_like 'a slack ruby bot'
  end
end
