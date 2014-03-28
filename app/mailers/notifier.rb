class Notifier < ActionMailer::Base
  default to: AdminUser.pluck(:email), from: ENV["GMAIL_USERNAME"]

  def applicant_apply(applicant)
    @applicant = applicant

    mail subject:'New applicant for the apprentice program'
  end
end
