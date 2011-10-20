require 'spec_helper'

describe InterestedEmail do
  describe "validation" do
    it "should pass if its a valid email format" do
      InterestedEmail.new(:email => "mail@mail.com").valid?.should be_true
    end

    it "should fail if its an invalid email format" do
      InterestedEmail.new(:email => "abc@mail").valid?.should be_false
    end
  end
end
