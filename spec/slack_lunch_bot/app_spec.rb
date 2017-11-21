# frozen_string_literal: true
require 'spec_helper'

describe SlackLunchBot::App do
  context 'authenticated' do
    it_behaves_like 'a slack ruby bot'
  end
end
