class StaticPagesController < ApplicationController
  def home

  end

  def montpellier

  end

  def jobseeker

  end

  def signed

  end

  def subscribe
    ActionMailchimp.new.subscribe(params["email"], params["targeted_customer"])
    redirect_to "/signed"
  end

end
