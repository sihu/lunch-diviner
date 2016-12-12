class Groupador
  def initialize(users)
    @users = users
  end

  def groups(size)
    @users.shuffle.each_slice(size).to_a
  end
end