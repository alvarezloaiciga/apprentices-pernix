class Applicant < ActiveRecord::Base
  validates :name, :github, :email,  presence: true
  validates :github, :email, uniqueness: true
end
