class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_one :membership_form
  # has_many :membership_forms
  # , -> (membership_form) {where.not(admin_id: nil)}
  has_many :admin_forms, :foreign_key => "admin_id", :class_name => "MembershipForm"
  # , -> {includes(:user).where(: {name: ["Admin","Super Admin"]})}
  # before_create :assign_role

  # def assign_role
  #   binding.pry
  #   role = Role.find_by(name: "User")
  #   self.role_id = role.id
  # end
end
