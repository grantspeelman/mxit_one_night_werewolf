#!/usr/bin/env rackup
# encoding: utf-8

# This file can be used to start Padrino,
# just execute it from the command line.

require File.expand_path('../config/boot.rb', __FILE__)

if Padrino.env == :production
  require 'airbrake'

  Airbrake.configure do |config|
    config.api_key = ENV['AIRBRAKE_API_KEY']
    config.host = ENV['AIRBRAKE_HOST'] if ENV['AIRBRAKE_HOST']
  end

  use Airbrake::Rack
end
run Padrino.application
