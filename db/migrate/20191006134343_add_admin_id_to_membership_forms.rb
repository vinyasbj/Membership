class AddAdminIdToMembershipForms < ActiveRecord::Migration[5.2]
  def change
    add_column :membership_forms, :admin_id, :integer
  end
end
