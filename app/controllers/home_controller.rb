class HomeController < ApplicationController
  def index
    @applicant = Applicant.new
    @employees = Employee.all
  end
end
