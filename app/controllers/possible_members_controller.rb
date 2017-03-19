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
    params.require(:possible_member).permit(:id, :first_name, :first_surname, :last_surname, :email, :document_type, :document_number, :consultancy_area => [])
  end
end