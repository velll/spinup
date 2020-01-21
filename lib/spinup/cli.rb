require 'optparse'

module Spinup
  class CLI
    Options = Struct.new(:name)

    def self.parse(options, supported)
      args = Options.new('world')

      opt_parser = OptionParser.new do |opts|
        opts.banner = ['Usage: spinup <playground> [<directory>]',
                       "Supported playgrounds: #{supported.map(&:to_s).join(', ')}"].join("\n")

        opts.on('-h', '--help', 'Prints this help') do
          puts opts
          exit
        end
      end

      opt_parser.parse!(options)
      args
    end
  end
end
