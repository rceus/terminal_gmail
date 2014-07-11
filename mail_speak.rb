require 'gmail'
puts("Hi! Welcome to terminal_gmail")
`say Hi! Welcome to terminal gmail.`
puts("Enter Username: ")
`say Enter your username`
username = gets().chomp
puts("Enter Password: ")
`say Enter your password`
password = gets().chomp

gmail = Gmail.connect!(username, password)
	puts("Authorized User!")
	`say You are an authorized user.`
	puts("Enter email-id of the person you want to send the email:")
	`say Enter the email ID of the person you want to send the email.`
	gid=gets().chomp
	puts("Enter the subject of the mail: ")
	`say Enter the subject of the mail:`
	sub=gets().chomp
	puts("Enter the message: ")
	`say Enter your message now and please click enter when you are done writing.`
	body_mail=gets()
	body_mail= body_mail.to_s + 'Sent from Terminal'
	
	puts("Any attachment(y/n): ")
	`say Do you want to attach something to the mail. Press Y or N, only.`
	flag_attachment=gets().chomp
	if flag_attachment.to_s =='y'
		puts('Enter the path for the attachment:')
		`say Enter the path of the attachment`
		attachment_path=gets().chomp
	elsif flag_attachment.to_s !='y'
		puts('No attachment! Preparing to send the mail....')
		`say No attachment! Preparing to send the mail.`
	end
	puts("Send? Click s to send. Anything else will abort the operation.")
	`say Click s to send otherwise operation will abort.`
	flag_send=gets().chomp

	if flag_send=='s'
		email=gmail.compose do
  			to gid
  			subject sub
    		body body_mail
  		end
  		gmail.deliver(email)
  		puts()
  		puts("Email sent!")
  		`say Email has been sent. Thanks for using Terminal Gmail`
  	else
  		puts("Aborted..Thanks for using Terminal Gmail")
  		`say Aborted. Thanks for using Terminal Gmail`
  	end	
gmail.logout