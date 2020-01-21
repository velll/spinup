require 'spinup/version'


require 'spinup/cli'
require 'spinup/config'
require 'spinup/runner'

require 'spinup/colorized_string'
require 'spinup/locator'
require 'spinup/opener'
require 'spinup/playground_builder'
require 'spinup/playground'

module Spinup
  class Error < StandardError; end
end
