require 'gmail'
puts("Hi! Welcome to terminal_gmail")
puts("Enter Username: ")
username = gets().chomp
puts("Enter Password: ")
password = gets().chomp

gmail = Gmail.connect!(username, password)
	puts("Authorized User!")
	puts("Enter email-id of the person you want to send the email:")
	gid=gets().chomp
	puts("Enter the subject of the mail: ")
	sub=gets().chomp
	puts("Enter the message: ")
	body_mail=gets()
	body_mail= body_mail.to_s + 'Sent from Terminal'
	email=gmail.compose do
  		to gid
  		subject sub
    	body body_mail
  	end
  	gmail.deliver(email)
  	puts()
  	puts("Email sent!")
gmail.logout