#!/usr/bin/env ruby
$LOAD_PATH.unshift File.dirname(__FILE__)
$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/lib"

require 'securerandom'
require 'pry'

require 'config'
require 'lib/locator'
require 'lib/opener'
require 'lib/playground_builder'
require 'lib/cli'

CliParser.parse(ARGV, Config::PLAYGROUNDS.keys)
playground, directory = ARGV[0].to_sym, ARGV[1]

default_dir = File.expand_path(Config::DEFAULT_DIR)
session_key = SecureRandom.hex[0..6]

raise 'please specify playground to create' unless playground

directory ||= Locator.new(default_dir).(playground, session_key)
config = Config::PLAYGROUNDS[playground]

builder = PlaygroundBuilder.new(directory, Opener.new)
builder.(playground, config)