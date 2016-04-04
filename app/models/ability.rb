class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :user
      can :read, all
      can :manage, User, user_id: user.id
    else
      can :read, all
    end

  end
end
