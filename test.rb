#!/usr/bin/env ruby
require 'gmail'
require 'gli'

include GLI::App

program_desc 'A terminal mailing application'

username = "rishabhjain2795"
password = "chhavi1234"
gmail=Gmail.connect(username,password)
num=gmail.inbox.count
puts(num)

gmail.logout