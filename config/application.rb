require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Feedzilla
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Europe/Moscow'
    config.i18n.default_locale = :ru
    # Let the rails-i18n gem load only russian locale
    config.i18n.available_locales = :ru
  end
end
