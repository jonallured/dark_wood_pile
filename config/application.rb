require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module DarkWoodPile
  class Application < Rails::Application
    config.load_defaults 7.0
    config.active_record.schema_format = :sql
  end
end
