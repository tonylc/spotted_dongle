class HomeController < ApplicationController

  def coming_soon
  end

  def collect_email
    InterestedEmail.create!(:email => params[:email])
    render :nothing => true
  rescue
    render :text => "this address has already been subscribed"
  end
end
