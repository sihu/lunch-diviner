# frozen_string_literal: true
require 'spec_helper'

describe Groupador do
  let(:users) { %w(rbuetzer digi schmijos sihu lelmer dbrgn) }
  subject { Groupador.new(users) }

  it 'creates a list of groups' do
    expect(subject.groups(2)).to be_an(Enumerable)
  end

  it 'creates groups with all users' do
    expect(subject.groups(2).flatten).to contain_exactly(*users)
  end

  it 'can make some groups' do
    expect(subject.groups(1).count).to eq(6)
    expect(subject.groups(2).count).to eq(3)
    expect(subject.groups(3).count).to eq(2)
    expect(subject.groups(4).count).to eq(2)
    expect(subject.groups(5).count).to eq(2)
    expect(subject.groups(6).count).to eq(1)
  end

  it 'shuffles before grouping' do
    expect_any_instance_of(Array).to receive(:shuffle).and_return(users)
    subject.groups(2)
  end

  it 'can list groups as text' do
    output_for_groups_of_three = subject.slack_formatted_groups(3)
    expect(output_for_groups_of_three.split('').count('-')).to eq(2)
    expect(output_for_groups_of_three.split('').count(',')).to eq(4)
  end
end
