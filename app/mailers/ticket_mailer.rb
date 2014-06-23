class TicketMailer < ActionMailer::Base
  def buy_ticket(mail_client)
  	mail(to: mail_client, subject: 'Ticket', from: 'teguzairlines@ta.com')	
  end
end
