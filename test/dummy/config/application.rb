require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require


require "cells"

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    config.cache_store = :memory_store

    # enable asset pipeline as in development.
    config.assets.enabled = true
    config.assets.compile = true

    config.secret_token = "some secret phrase of at least 30 characters"

    config.cells.with_assets = ["album"]
  end
end
