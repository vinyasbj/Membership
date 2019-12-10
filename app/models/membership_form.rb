class MembershipForm < ApplicationRecord
    belongs_to :user,optional: true
    belongs_to :admin,optional: true, :class_name => "User", :foreign_key => 'admin_id'
    mount_uploader :image, ImageUploader
    # validates_uniqueness_of :user_id
    scope :admin_forms ,-> {where.not(admin_id: nil)}

    before_update :change_status

    def change_status
        if self.status_changed?
            binding.pry
            StatusMailer.status_change(self).deliver_now
        end
        binding.pry
    end
end