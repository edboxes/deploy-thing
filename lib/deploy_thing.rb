require "deploy_thing/version"

require "aws-sdk"
require 'sequel'

Dir[File.expand_path "lib/deploy_thing/**/*.rb"].each do |f|
  require_relative(f) unless f.include?("/models")
end