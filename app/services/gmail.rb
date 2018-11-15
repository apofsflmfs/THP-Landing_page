require 'rubygems'
require 'mail'


class Gmail

  def send_mails(mail)

    username = 'montpellier.thp@gmail.com'
    password ='&&&2018&&&'
    adresse = mail

    gmail = Gmail.connect(username,password)
    gmail.deliver do
      to adresse
      subject "Le projet THP propose d'apprendre d'apprendre gratuitement à programmer !"
      content_type 'text/html; charset=UTF-8'
      body "<p>Bonjour, <br><br>"
    end
    gmail.logout
  end
end