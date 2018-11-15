class StaticPagesController < ApplicationController
  def home

  end

  def signed

  end

  def subscribe
    ActionMailchimp.new.subscribe(params["email"], params["targeted_customer"])
    redirect_to "/"
  end

end
