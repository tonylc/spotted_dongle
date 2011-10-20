class SessionController < ApplicationController
  http_basic_authenticate_with :name => 'spotted', :password => 'dongle'
end
