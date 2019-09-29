require 'test_helper'

class MembershipFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membership_form = membership_forms(:one)
  end

  test "should get index" do
    get membership_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_membership_form_url
    assert_response :success
  end

  test "should create membership_form" do
    assert_difference('MembershipForm.count') do
      post membership_forms_url, params: { membership_form: { age: @membership_form.age, applicants_sign: @membership_form.applicants_sign, blood_group: @membership_form.blood_group, cash_dd: @membership_form.cash_dd, dob: @membership_form.dob, father_name: @membership_form.father_name, form_date: @membership_form.form_date, hon_secretary_sign: @membership_form.hon_secretary_sign, husband_name: @membership_form.husband_name, husbands_mother_name: @membership_form.husbands_mother_name, k_mobile_no: @membership_form.k_mobile_no, k_pin: @membership_form.k_pin, k_tele_no: @membership_form.k_tele_no, kodagu_address: @membership_form.kodagu_address, l_mobile_no: @membership_form.l_mobile_no, l_tele_no: @membership_form.l_tele_no, local_address: @membership_form.local_address, local_pin: @membership_form.local_pin, membership_fee: @membership_form.membership_fee, mother_name: @membership_form.mother_name, name: @membership_form.name, no_family_members: @membership_form.no_family_members, nominee_of_death_fund: @membership_form.nominee_of_death_fund, occupation: @membership_form.occupation, president_sign: @membership_form.president_sign, proposer_family_name: @membership_form.proposer_family_name, proposer_memebership_no: @membership_form.proposer_memebership_no, proposer_mobile: @membership_form.proposer_mobile, proposer_sign: @membership_form.proposer_sign, proposer_tele: @membership_form.proposer_tele, receipt_date: @membership_form.receipt_date, receipt_no: @membership_form.receipt_no, seconder_family_name: @membership_form.seconder_family_name, seconder_memebership_no: @membership_form.seconder_memebership_no, seconder_mobile: @membership_form.seconder_mobile, seconder_sign: @membership_form.seconder_sign, seconder_tele: @membership_form.seconder_tele, sex: @membership_form.sex, status: @membership_form.status, user_id: @membership_form.user_id, wifes_name: @membership_form.wifes_name } }
    end

    assert_redirected_to membership_form_url(MembershipForm.last)
  end

  test "should show membership_form" do
    get membership_form_url(@membership_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_membership_form_url(@membership_form)
    assert_response :success
  end

  test "should update membership_form" do
    patch membership_form_url(@membership_form), params: { membership_form: { age: @membership_form.age, applicants_sign: @membership_form.applicants_sign, blood_group: @membership_form.blood_group, cash_dd: @membership_form.cash_dd, dob: @membership_form.dob, father_name: @membership_form.father_name, form_date: @membership_form.form_date, hon_secretary_sign: @membership_form.hon_secretary_sign, husband_name: @membership_form.husband_name, husbands_mother_name: @membership_form.husbands_mother_name, k_mobile_no: @membership_form.k_mobile_no, k_pin: @membership_form.k_pin, k_tele_no: @membership_form.k_tele_no, kodagu_address: @membership_form.kodagu_address, l_mobile_no: @membership_form.l_mobile_no, l_tele_no: @membership_form.l_tele_no, local_address: @membership_form.local_address, local_pin: @membership_form.local_pin, membership_fee: @membership_form.membership_fee, mother_name: @membership_form.mother_name, name: @membership_form.name, no_family_members: @membership_form.no_family_members, nominee_of_death_fund: @membership_form.nominee_of_death_fund, occupation: @membership_form.occupation, president_sign: @membership_form.president_sign, proposer_family_name: @membership_form.proposer_family_name, proposer_memebership_no: @membership_form.proposer_memebership_no, proposer_mobile: @membership_form.proposer_mobile, proposer_sign: @membership_form.proposer_sign, proposer_tele: @membership_form.proposer_tele, receipt_date: @membership_form.receipt_date, receipt_no: @membership_form.receipt_no, seconder_family_name: @membership_form.seconder_family_name, seconder_memebership_no: @membership_form.seconder_memebership_no, seconder_mobile: @membership_form.seconder_mobile, seconder_sign: @membership_form.seconder_sign, seconder_tele: @membership_form.seconder_tele, sex: @membership_form.sex, status: @membership_form.status, user_id: @membership_form.user_id, wifes_name: @membership_form.wifes_name } }
    assert_redirected_to membership_form_url(@membership_form)
  end

  test "should destroy membership_form" do
    assert_difference('MembershipForm.count', -1) do
      delete membership_form_url(@membership_form)
    end

    assert_redirected_to membership_forms_url
  end
end
