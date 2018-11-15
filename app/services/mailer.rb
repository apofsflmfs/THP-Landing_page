class Mailer

  def send_mails(mail)

    username = 'montpellier.thp@gmail.com'
    password = Rails.application.credentials.GMAIL_PASSWORD
    adresse = mail

    gmail = Gmail.connect!(username,password)
    gmail.deliver do
      to adresse
      subject "Le projet THP propose d'apprendre d'apprendre gratuitement à programmer !"
      content_type 'text/html; charset=UTF-8'
      body "<p>Bonjour, <br> Vous vous êtes bien abonné à la Newsletter de THP.<br>"
    end
    gmail.logout
  end
end