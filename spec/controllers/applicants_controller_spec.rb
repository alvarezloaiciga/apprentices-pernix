require 'spec_helper'

AN_APPLICANT_NAME = "Jhon Maxwell"
AN_APPLICANT_EMAIL = "jhon@maxwell.com"
AN_APPLICANT_GITHUB = "jhon_max"

describe ApplicantsController, "#create" do
  let(:applicant) { double(:applicant).as_null_object }
  let(:params) {{
    "applicant" => {
      "name"   => AN_APPLICANT_NAME,
      "github" => AN_APPLICANT_GITHUB,
      "email"  => AN_APPLICANT_EMAIL
    }}}

  it "creates a new applicant with the params" do
    expect(Applicant).to receive(:new).with(params["applicant"]) { applicant }
    post :create, params.merge(format: :js)
  end

  it "saves the object" do
    allow(Applicant).to receive(:new) { applicant }
    expect(applicant).to receive(:save)
    post :create, params.merge(format: :js)
  end
end
