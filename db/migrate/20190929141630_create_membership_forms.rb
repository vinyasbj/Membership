class CreateMembershipForms < ActiveRecord::Migration[5.2]
  def change
    create_table :membership_forms do |t|
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.integer :age
      t.date :dob
      t.string :sex
      t.string :blood_group
      t.text :local_address
      t.integer :local_pin
      t.string :l_mobile_no
      t.string :l_tele_no
      t.text :kodagu_address
      t.integer :k_pin
      t.string :k_mobile_no
      t.string :k_tele_no
      t.string :nominee_of_death_fund
      t.date :form_date
      t.string :applicants_sign
      t.string :husband_name
      t.string :husbands_mother_name
      t.string :wifes_name
      t.integer :no_family_members
      t.string :occupation
      t.string :proposer_family_name
      t.string :proposer_mobile
      t.string :proposer_tele
      t.string :proposer_memebership_no
      t.string :proposer_sign
      t.string :seconder_family_name
      t.string :seconder_mobile
      t.string :seconder_tele
      t.string :seconder_memebership_no
      t.string :seconder_sign
      t.string :status
      t.integer :user_id
      t.string :membership_fee
      t.string :receipt_no
      t.string :cash_dd
      t.date :receipt_date
      t.string :president_sign
      t.string :hon_secretary_sign

      t.timestamps
    end
  end
end
