require 'fileutils'

require 'lib/opener'
require 'lib/playground'

class PlaygroundBuilder
  def initialize(dir, opener)
    @dir = dir
    @opener = opener
  end

  def call(playground_type, config)
    abort "#{playground_type} is not supported." if config.nil?

    playground = Playground.new(playground_type.to_sym, config)
    playground.establish(@dir) { @opener.(@dir) }
  end
end
