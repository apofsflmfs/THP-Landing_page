class StaticPagesController < ApplicationController
  def home

  end

  def subscribe
    ActionMailchimp.new.subscribe(params["email"], params["targeted_customer"])
    flash[:notice] = "Vous êtes abonné à la newsletter!"
    redirect_to "/"
  end

end
