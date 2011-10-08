require 'spec_helper'

describe HomeController do
  it "should render coming soon" do
    get :coming_soon
    response.should be_success
  end

  it "should collect email" do
    post :collect_email, :email => "test@mail.com"
    response.should be_success
  end

  it "should complain that an email is already taken" do
    post :collect_email, :email => "test@mail.com"
    response.should be_success

    post :collect_email, :email => "test@mail.com"
    response.body.should == "Email already taken!"
  end
end
