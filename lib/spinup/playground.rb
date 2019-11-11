require 'fileutils'
require 'spinup/colorized_string'

module Spinup
  class Playground
    class << self
      def cd(where)
        Dir.chdir(where)
      end

      def cp_r(from, where)
        FileUtils.mkdir_p where
        FileUtils.cp_r(from, where)
      end

      def with_empty_lines_around
        puts
        yield
        puts
      end
    end

    def initialize(name, config)
      @name = name

      @copy = config[:copy_contents]
      @commands = config[:commands]
    end

    def establish(where)
      puts "establishing playgound at #{where}"

      copy_contents(where) if @copy

      yield if block_given?

      run_commands(where)
    end

    def copy_contents(where)
      self.class.cp_r(image_path, where)

      puts "New #{@name} playground created under #{where}"
    end

    def image_path
      "images/#{@name}/."
    end

    def run_commands(where)
      @commands.each do |command|
        self.class.with_empty_lines_around do
          puts "=> running #{ColorizedString.new(command, :green)}"
        end

        # prevent using ./Gemfile when spawning ruby processes
        Bundler.with_clean_env do
          pid = Process.spawn(command, out: $stdout, err: $stderr, chdir: where)
          Process.wait(pid)
        end
      end
    end
  end
end
