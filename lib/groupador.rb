# frozen_string_literal: true
class Groupador
  def initialize(users)
    @users = users
  end

  def groups(size)
    @users.shuffle.each_slice(size).to_a
  end

  def slack_formatted_groups(size)
    groups(size).map do |user_names|
      "- #{user_names.join(', ')}"
    end.join("\n")
  end
end
