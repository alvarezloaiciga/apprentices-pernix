require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module ApprenticesPernix
  class Application < Rails::Application
    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.serve_static_assets = true
    config.assets.initialize_on_precompile = false
    config.assets.compile = true
    config.assets.precompile += %w( active_admin.css active_admin/print.css active_admin.js print.css)
    config.assets.enabled = true
  end
end
