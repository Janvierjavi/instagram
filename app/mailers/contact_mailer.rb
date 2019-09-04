class ContactMailer < ApplicationMailer
    def contact_mail(contact)
        @contact = contact
      
        mail to: "janvierjavim2@gmail.com", subject: "your create the post"
        end
end
