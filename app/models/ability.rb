class Ability
  include CanCan::Ability

  def initialize(user, namespace = nil)
    case namespace
    when 'api' then api_abilities(user)
    else            default_abilities(user)
    end
  end

  def default_abilities(user)
    user ||= User.new

    can :manage, ApiKey if user.approved?
    can :manage, Artwork if user.approved?
    can :read, Artwork
  end

  def api_abilities(key)
    key ||= ApiKey.new

    can :manage, Artwork unless key.new_record?
  end
end
