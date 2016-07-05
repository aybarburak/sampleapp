class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.rank > User::USER
      can :manage, User
    else
      can :read, User
    end
  end
end
