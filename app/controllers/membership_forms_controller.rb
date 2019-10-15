class MembershipFormsController < ApplicationController
  load_and_authorize_resource param_method: :my_sanitizer
  before_action :set_membership_form, only: [:show, :edit, :update, :destroy]

  # GET /membership_forms
  # GET /membership_forms.json
  def index
    @membership_forms = MembershipForm.all
  end

  # GET /membership_forms/1
  # GET /membership_forms/1.json
  def show
  end

  def home
    if current_user.role.name == "Admin" || current_user.role.name == "Super Admin"
      redirect_to membership_forms_path
    else
      @membership_form = current_user.membership_form
    end
  end

  # GET /membership_forms/new
  def new
    # if current_user.role.name == "User"
      @membership_form = MembershipForm.new
    # else
      # redirect_to membership_forms_path
    # end
  end

  # GET /membership_forms/1/edit
  def edit
  end

  # POST /membership_forms
  # POST /membership_forms.json
  def create
    @membership_form = MembershipForm.new(membership_form_params)
    respond_to do |format|
      if @membership_form.save
        format.html { redirect_to @membership_form, notice: 'Membership form was successfully created.' }
        format.json { render :show, status: :created, location: @membership_form }
      else
        format.html { render :new }
        format.json { render json: @membership_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membership_forms/1
  # PATCH/PUT /membership_forms/1.json
  def update
    respond_to do |format|
      if @membership_form.update(membership_form_params)
        format.html { redirect_to @membership_form, notice: 'Membership form was successfully updated.' }
        format.json { render :show, status: :ok, location: @membership_form }
      else
        format.html { render :edit }
        format.json { render json: @membership_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membership_forms/1
  # DELETE /membership_forms/1.json
  def destroy
    @membership_form.destroy
    respond_to do |format|
      format.html { redirect_to membership_forms_url, notice: 'Membership form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership_form
      @membership_form = MembershipForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_form_params
      params.require(:membership_form).permit(:name, :father_name, :mother_name, :age, :dob, :sex, :blood_group, :local_address, :local_pin, :l_mobile_no, :l_tele_no, :kodagu_address, :k_pin, :k_mobile_no, :k_tele_no, :nominee_of_death_fund, :form_date, :applicants_sign, :husband_name, :husbands_mother_name, :wifes_name, :no_family_members, :occupation, :proposer_family_name, :proposer_mobile, :proposer_tele, :proposer_memebership_no, :proposer_sign, :seconder_family_name, :seconder_mobile, :seconder_tele, :seconder_memebership_no, :seconder_sign, :status, :user_id, :membership_fee, :receipt_no, :cash_dd, :receipt_date, :president_sign, :hon_secretary_sign,:admin_id,:image)
    end
end
