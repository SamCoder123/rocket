require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rocket
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.autoload_paths += %W(#{config.root}/app/services)

    config.time_zone = "Beijing"
    config.active_record.default_timezone = :local
    config.generators.test_framework = nil
    config.i18n.default_locale = :"zh-CN"
    config.exceptions_app = self.routes


    # config.serve_static_assets = true
  end
end
