class Ability
  include CanCan::Ability
  
  def initialize(user)
    if !user
      can :read, :all
    end
    
    can :read, :all
    can :manage, FruitCache do |cache|
      cache && cache.user == user
    end
  end
end