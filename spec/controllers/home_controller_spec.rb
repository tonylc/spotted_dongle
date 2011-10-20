require 'spec_helper'

describe HomeController do
  describe "#coming_soon" do
    it "should render" do
      get :coming_soon
      response.should be_success
    end
  end

  describe "#collect_email" do
    it "should save an email address" do
      post :collect_email, :email => "test@mail.com"
      response.should be_success
    end

    it "should complain that an email is already taken" do
      post :collect_email, :email => "test@mail.com"
      response.should be_success

      post :collect_email, :email => "test@mail.com"
      response.body.should == "this address has already been subscribed"
    end
  end
end
