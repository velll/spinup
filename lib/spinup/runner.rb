module Spinup
  class Runner
    def initialize(playground, dir)
      default_dir = File.expand_path(Spinup::Config::DEFAULT_DIR)
      session_key = SecureRandom.hex[0..6]

      directory = dir || Locator.new(default_dir).(playground, session_key)
      config = Config::PLAYGROUNDS[playground]

      builder = PlaygroundBuilder.new(directory, Opener.new)

      # puts playground.inspect
      # puts config.inspect
      # raise "ready to build"

      builder.(playground, config)
    end
  end
end
