# Load the Rails application.
require_relative 'application'
require 'flickr'
flickr = Flickr.new
# Initialize the Rails application.
Rails.application.initialize!
