require 'spec_helper'

describe HomeController, "#index" do
  let(:applicant) { double(:applicant) }

  it "creates new applicant" do
    expect(Applicant).to receive(:new)
    get :index
  end

  it "assigns the applicant" do
    allow(Applicant).to receive(:new) { applicant }
    get :index
    expect(assigns(:applicant)).to eq applicant
  end
end
