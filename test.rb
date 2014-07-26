require 'gmail'
puts("Hi! Welcome to terminal_gmail")
puts("Enter Username: ")
username = gets().chomp
puts("Enter Password: ")
password = gets().chomp
Gmail.new(username, password) do |gmail|
	print(gmail.inbox.count)
end