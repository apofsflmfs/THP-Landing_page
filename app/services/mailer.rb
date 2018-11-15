class Mailer
  def send_email(email)
    mail_subject = "Welcome to THP!!" 
    gmail = Gmail.connect!("team.montpellier.thp@gmail.com",Rails.application.credentials.GMAIL_PASSWORD)

    gmail.deliver do
      to email
      subject mail_subject
      text_part do
        body "Bonjour,
        Le projet THP propose d'apprendre d'apprendre gratuitement à programmer !
        Vous êtes bien inscrits à la newsletter"
      end
    end
  end
end

