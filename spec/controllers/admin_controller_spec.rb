require 'spec_helper'

describe AdminController do
  before(:each) do
    user = 'spotted'
    pass = 'dongle'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user, pass)
  end

  describe "#index" do
    before(:each) do
      @email = InterestedEmail.create(:email => "mail@mail.com")
    end

    it "should show all collected emails" do
      get :index
      response.should be_success
      assigns[:emails].should == [@email]
    end
  end
end
