require "application_system_test_case"

class MembershipFormsTest < ApplicationSystemTestCase
  setup do
    @membership_form = membership_forms(:one)
  end

  test "visiting the index" do
    visit membership_forms_url
    assert_selector "h1", text: "Membership Forms"
  end

  test "creating a Membership form" do
    visit membership_forms_url
    click_on "New Membership Form"

    fill_in "Age", with: @membership_form.age
    fill_in "Applicants sign", with: @membership_form.applicants_sign
    fill_in "Blood group", with: @membership_form.blood_group
    fill_in "Cash dd", with: @membership_form.cash_dd
    fill_in "Dob", with: @membership_form.dob
    fill_in "Father name", with: @membership_form.father_name
    fill_in "Form date", with: @membership_form.form_date
    fill_in "Hon secretary sign", with: @membership_form.hon_secretary_sign
    fill_in "Husband name", with: @membership_form.husband_name
    fill_in "Husbands mother name", with: @membership_form.husbands_mother_name
    fill_in "K mobile no", with: @membership_form.k_mobile_no
    fill_in "K pin", with: @membership_form.k_pin
    fill_in "K tele no", with: @membership_form.k_tele_no
    fill_in "Kodagu address", with: @membership_form.kodagu_address
    fill_in "L mobile no", with: @membership_form.l_mobile_no
    fill_in "L tele no", with: @membership_form.l_tele_no
    fill_in "Local address", with: @membership_form.local_address
    fill_in "Local pin", with: @membership_form.local_pin
    fill_in "Membership fee", with: @membership_form.membership_fee
    fill_in "Mother name", with: @membership_form.mother_name
    fill_in "Name", with: @membership_form.name
    fill_in "No family members", with: @membership_form.no_family_members
    fill_in "Nominee of death fund", with: @membership_form.nominee_of_death_fund
    fill_in "Occupation", with: @membership_form.occupation
    fill_in "President sign", with: @membership_form.president_sign
    fill_in "Proposer family name", with: @membership_form.proposer_family_name
    fill_in "Proposer memebership no", with: @membership_form.proposer_memebership_no
    fill_in "Proposer mobile", with: @membership_form.proposer_mobile
    fill_in "Proposer sign", with: @membership_form.proposer_sign
    fill_in "Proposer tele", with: @membership_form.proposer_tele
    fill_in "Receipt date", with: @membership_form.receipt_date
    fill_in "Receipt no", with: @membership_form.receipt_no
    fill_in "Seconder family name", with: @membership_form.seconder_family_name
    fill_in "Seconder memebership no", with: @membership_form.seconder_memebership_no
    fill_in "Seconder mobile", with: @membership_form.seconder_mobile
    fill_in "Seconder sign", with: @membership_form.seconder_sign
    fill_in "Seconder tele", with: @membership_form.seconder_tele
    fill_in "Sex", with: @membership_form.sex
    fill_in "Status", with: @membership_form.status
    fill_in "User", with: @membership_form.user_id
    fill_in "Wifes name", with: @membership_form.wifes_name
    click_on "Create Membership form"

    assert_text "Membership form was successfully created"
    click_on "Back"
  end

  test "updating a Membership form" do
    visit membership_forms_url
    click_on "Edit", match: :first

    fill_in "Age", with: @membership_form.age
    fill_in "Applicants sign", with: @membership_form.applicants_sign
    fill_in "Blood group", with: @membership_form.blood_group
    fill_in "Cash dd", with: @membership_form.cash_dd
    fill_in "Dob", with: @membership_form.dob
    fill_in "Father name", with: @membership_form.father_name
    fill_in "Form date", with: @membership_form.form_date
    fill_in "Hon secretary sign", with: @membership_form.hon_secretary_sign
    fill_in "Husband name", with: @membership_form.husband_name
    fill_in "Husbands mother name", with: @membership_form.husbands_mother_name
    fill_in "K mobile no", with: @membership_form.k_mobile_no
    fill_in "K pin", with: @membership_form.k_pin
    fill_in "K tele no", with: @membership_form.k_tele_no
    fill_in "Kodagu address", with: @membership_form.kodagu_address
    fill_in "L mobile no", with: @membership_form.l_mobile_no
    fill_in "L tele no", with: @membership_form.l_tele_no
    fill_in "Local address", with: @membership_form.local_address
    fill_in "Local pin", with: @membership_form.local_pin
    fill_in "Membership fee", with: @membership_form.membership_fee
    fill_in "Mother name", with: @membership_form.mother_name
    fill_in "Name", with: @membership_form.name
    fill_in "No family members", with: @membership_form.no_family_members
    fill_in "Nominee of death fund", with: @membership_form.nominee_of_death_fund
    fill_in "Occupation", with: @membership_form.occupation
    fill_in "President sign", with: @membership_form.president_sign
    fill_in "Proposer family name", with: @membership_form.proposer_family_name
    fill_in "Proposer memebership no", with: @membership_form.proposer_memebership_no
    fill_in "Proposer mobile", with: @membership_form.proposer_mobile
    fill_in "Proposer sign", with: @membership_form.proposer_sign
    fill_in "Proposer tele", with: @membership_form.proposer_tele
    fill_in "Receipt date", with: @membership_form.receipt_date
    fill_in "Receipt no", with: @membership_form.receipt_no
    fill_in "Seconder family name", with: @membership_form.seconder_family_name
    fill_in "Seconder memebership no", with: @membership_form.seconder_memebership_no
    fill_in "Seconder mobile", with: @membership_form.seconder_mobile
    fill_in "Seconder sign", with: @membership_form.seconder_sign
    fill_in "Seconder tele", with: @membership_form.seconder_tele
    fill_in "Sex", with: @membership_form.sex
    fill_in "Status", with: @membership_form.status
    fill_in "User", with: @membership_form.user_id
    fill_in "Wifes name", with: @membership_form.wifes_name
    click_on "Update Membership form"

    assert_text "Membership form was successfully updated"
    click_on "Back"
  end

  test "destroying a Membership form" do
    visit membership_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membership form was successfully destroyed"
  end
end
