require 'spec_helper'

describe AdminController do
  before(:each) do
    user = 'spotted'
    pass = 'dongle'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pass)
  end

  it "should render admin page with user name and password" do
    get :index
    response.should be_success
  end
end
