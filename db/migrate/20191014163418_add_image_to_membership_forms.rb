class AddImageToMembershipForms < ActiveRecord::Migration[5.2]
  def change
    add_column :membership_forms, :image, :string
  end
end
