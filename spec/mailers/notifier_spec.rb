require 'spec_helper'

describe Notifier, "#applicant_apply" do
  let(:date) { DateTime.new(2014, 1, 1, 12, 12, 12) }
  let(:applicant) { double(:applicant, name: 'A_NAME', email: 'A_MAIL',
                           github: 'A_GIT', created_at: date) }
  subject { described_class.applicant_apply(applicant) }

  it "renders the subject" do
    expect(subject.subject).to eq('New applicant for the apprentice program')
  end

  it "includes the applicant name in the body" do
    expect(subject.body).to include(applicant.name)
  end

  it "includes the applicant email in the body" do
    expect(subject.body).to include(applicant.email)
  end

  it "includes the applicant github in the body" do
    expect(subject.body).to include(applicant.github)
  end

  it "includes the applicant creation date in the body" do
    expect(subject.body).to include('01/01/2014 - 12:12:12')
  end
end
