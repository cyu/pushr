# This rackup allows for two Pushr instance to be running on the same server.
# This is handy for deploying production and staging instances on the same
# server.  The values required for  staging.yml and production.yml should be
# the same as config.yml.

$LOAD_PATH << File.dirname( File.expand_path(__FILE__) )
require 'pushr'

Pushr::Application.set :environment, :production
Pushr::Application.disable :run, :reload

map("/staging") { run Pushr::Application.new('staging.yml') }
map("/production") { run Pushr::Application.new('production.yml') }
