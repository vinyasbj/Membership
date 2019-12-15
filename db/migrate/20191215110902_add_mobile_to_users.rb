class AddMobileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mobile, :string
    add_index :users, :mobile, unique: true
  end
end
