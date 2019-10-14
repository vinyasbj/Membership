class MembershipForm < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :admin,optional: true, :class_name => "User", :foreign_key => 'admin_id'
    mount_uploader :image, ImageUploader
end
