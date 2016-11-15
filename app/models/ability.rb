class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can [:read, :update, :destroy], Car
      can :manage, User
    end
  end
end
