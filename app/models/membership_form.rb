class MembershipForm < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :admin,optional: true, :class_name => "User", :foreign_key => 'admin_id'
    mount_uploader :image, ImageUploader
    validates_uniqueness_of :user_id
    scope :admin_forms ,-> {where.not(admin_id: nil)}
end
