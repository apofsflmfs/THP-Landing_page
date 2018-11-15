class StaticPagesController < ApplicationController
  def home

  end

  def subscribe
    Mailer.new.send_mails(params["email"])
    ActionMailchimp.new.subscribe(params["email"], params["targeted_customer"])
    redirect_to "/"
  end

end
