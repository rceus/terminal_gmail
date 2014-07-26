require 'gmail'
puts("Hi! Welcome to terminal_gmail")
puts("Enter Username: ")
username = gets().chomp
puts("Enter Password: ")
password = gets().chomp
Gmail.connect!(username, password) do |gmail|
	email = gmail.generate_message do
    to "rjain11@illinois.edu.com"
    subject "Having fun in Puerto Rico!"
    body "Spent the day on the road..."
  end
  email.deliver!
  puts("Email sent!")
end