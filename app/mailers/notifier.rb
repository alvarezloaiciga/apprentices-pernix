class Notifier < ActionMailer::Base
  default to: AdminUser.pluck(:email), from: 'no-reply@pernix-solutions.com' #ENV['GMAIL_USERNAME']

  def applicant_apply(applicant)
    @applicant = applicant

    mail subject:'New applicant for the apprentice program'
  end
end
