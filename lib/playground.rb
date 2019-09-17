require 'fileutils'

class Playground
  def initialize(name, config)
    @name = name

    @copy = config[:copy_contents]
    @commands = config[:commands]
  end

  def copy_contents(where)
    FileUtils.mkdir_p where
    FileUtils.cp_r(get_contents_path, where)
  end

  def get_contents_path
    "contents/sinatra/."
  end
end
