ENV["RAILS_ENV"] = "test"

require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rspec/rails'
require 'database_cleaner'

module ControllerSpecHelper
  def self.included(base)
    base.render_views
  end
end

RSpec.configure do |config|
  config.include ControllerSpecHelper, :type => :controller
  config.use_transactional_fixtures = true
  config.mock_with :mocha

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
