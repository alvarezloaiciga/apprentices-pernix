require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module ApprenticesPernix
  class Application < Rails::Application
    config.time_zone = 'Central America'
    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.serve_static_assets = true
    config.assets.compile = true
    config.assets.precompile += %w( active_admin.css active_admin/print.css active_admin.js print.css)
    config.assets.enabled = true

    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      address: "smtp.gmail.com",
      enable_starttls_auto: true,
      port: 587,
      authentication: :plain,
      user_name: ENV["GMAIL_USERNAME"],
      password: ENV["GMAIL_PASSWORD"]
    }
  end
end
