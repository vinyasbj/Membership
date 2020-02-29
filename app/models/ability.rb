# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.role.name == "Admin" || user.role.name == "Super Admin"
      can [:create,:new,:index,:show,:edit ,:update, :destroy,:home,:form], MembershipForm
    else
      can [:create,:new,:show,:edit,:update,:home,:form], MembershipForm
    end
  end
end
