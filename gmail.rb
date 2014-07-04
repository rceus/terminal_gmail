#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

program :version, '0.0.1'
program :description, 'Terminal Gmail enables you to communicate with other people directly from your terminal by sending emails through gmail.'
 
command :tmail do |c|
  c.syntax = 'Terminal Gmail tmail [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Terminal gmail::Commands::Tmail
  end
end

