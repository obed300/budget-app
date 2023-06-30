require 'cancancan'
class Ability
  include CanCanCan::Ability

  def initialize(user)
    can :read, :all

    return unless user.present?

    can :manage, :all
  end
end
