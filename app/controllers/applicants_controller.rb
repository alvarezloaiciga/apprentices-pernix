class ApplicantsController < ApplicationController
  def create
    @applicant = Applicant.new(applicant_params)
    @applicant.save
    respond_to do |format|
      format.js {}
    end
  end

  private
  def applicant_params
    params.require(:applicant).permit(:email, :name, :github)
  end
end
