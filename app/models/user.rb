class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_one :membership_form

  # before_create :assign_role

  # def assign_role
  #   binding.pry
  #   role = Role.find_by(name: "User")
  #   self.role_id = role.id
  # end
end
