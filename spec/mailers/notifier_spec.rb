require 'spec_helper'

describe Notifier, "#applicant_apply" do
  let(:date) { DateTime.new(2014, 1, 1, 12, 12, 12) }
  let(:applicant) { double(:applicant, name: 'A_NAME', email: 'A_MAIL',
                           github: 'A_GIT', created_at: date) }
  subject { described_class.applicant_apply(applicant) }

  its(:subject) { should == 'New applicant for the apprentice program' }
  its(:body) { should include(applicant.name) }
  its(:body) { should include(applicant.email) }
  its(:body) { should include(applicant.github) }
  its(:body) { should include('01/01/2014 - 12:12:12') }
end
