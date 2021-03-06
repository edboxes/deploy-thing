require "deploy_thing/version"

require 'json'
require 'yaml'
require 'nokogiri'

require "aws-sdk"
require 'sequel'
require 'logger'

module DeployThing
  LOGGER = Logger.new($stderr)
end

Dir[File.expand_path "lib/deploy_thing/**/*.rb"].each do |f|
  require_relative(f) unless f.include?("/models")
end