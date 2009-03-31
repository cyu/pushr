$LOAD_PATH << File.dirname( File.expand_path(__FILE__) )
require 'pushr'

Pushr::Application.set :environment, :production
Pushr::Application.disable :run, :reload

run Pushr::Application
