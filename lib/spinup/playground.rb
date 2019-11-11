require 'fileutils'
require 'colorized_string'

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
    copy_contents(where) if @copy

    yield if block_given?

    self.class.cd(where)
    run_commands
  end

  def copy_contents(where)
    self.class.cp_r(image_path, where)

    puts "New #{@name} playground created under #{where}"
  end

  def image_path
    "images/#{@name}/."
  end

  def run_commands
    @commands.each do |command|
      self.class.with_empty_lines_around do
        puts "=> running #{ColorizedString.new(command, :green)}"
      end

      pid = Process.spawn(command, out: $stdout, err: $stderr)
      Process.wait(pid)
    end
  end
end
