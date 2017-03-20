class PossibleMembersController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def new
    @member = PossibleMember.new
  end

  def create
    @member = PossibleMember.new(members_params)
    if @member
      @member.save
      redirect_to root_path
    end
  end

  private

  def members_params
    params.require(:possible_member).permit(:id, :first_name, :first_surname, :last_surname, :email, :member_type, :document_type, :document_number, :study_type, :studies_center, :last_semester, :interests, :cv, :cv_file_name, :consultancy_area => [], :information_technology_area => [], :outsourcing_area => [], :administration_area => [], :technical_skills => [], :functional_skills => [])
  end
end