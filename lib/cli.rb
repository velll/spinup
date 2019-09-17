require 'optparse'

Options = Struct.new(:name)

class CliParser
  def self.parse(options, supported)
    args = Options.new("world")

    opt_parser = OptionParser.new do |opts|
      opts.banner = ["Usage: playground.rb <playground> [<directory>]",
                     "Supported playgrounds: #{supported.map(&:to_s).join(", ")}"].join("\n")

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return args
  end
end