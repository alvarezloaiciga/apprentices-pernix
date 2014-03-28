Devise.setup do |config|
  config.secret_key = 'a0a5609c0cf7fc4198a0b11b5c44b10324414da8f0f0a527630bae0c33ebbd6c66fc4ad05175bd389f27eff736020cb47d8056689b658dd02f73579454be60d9'

  config.mailer_sender = 'no-reply@pernix-solutions.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.password_length = 8..128

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
end
