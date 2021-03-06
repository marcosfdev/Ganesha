require File.expand_path('../boot', __FILE__)

#require 'rails/all'
require 'action_controller/railtie'
require 'action_mailer/railtie'
#require 'rails/test_unit/railtie'
require 'sprockets/railtie'

# Assets should be precompiled for production (so we don't need the gems loaded then)
Bundler.require(*Rails.groups(assets: %w(development test)))

module BootstrapApp
  class Application < Rails::Application
  
# Configure the default encoding used in templates for Ruby 1.9.
config.encoding = "utf-8"

# Configure sensitive parameters which will be filtered from the log file.
config.filter_parameters += [:password]

# Enable the asset pipeline
config.assets.enabled = true

# Version of your assets, change this if you want to expire all your assets
config.assets.version = '1.0'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
