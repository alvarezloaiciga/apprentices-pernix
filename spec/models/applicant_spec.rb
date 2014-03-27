require 'spec_helper'
describe Applicant, "validations" do
  it { should validate_presence_of :name }
  it { should validate_presence_of :github }
  it { should validate_presence_of :email }

  it { should validate_uniqueness_of :email }
  it { should validate_uniqueness_of :email }
end
