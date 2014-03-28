class Notifier < ActionMailer::Base
  default from: ENV["GMAIL_USERNAME"]

  def applicant_apply(applicant)
    @applicant = applicant

    mail to: "erickcsh@gmail.com", subject:'New applicant for the apprentice program'
  end
end
