class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.guest.new
    case
    when user.admin?
      can :manage, :all
    when user.general?
      can :manage, Declare, user: user
    end
  end
end
