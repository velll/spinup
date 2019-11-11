class Opener
  def call(dir)
    `#{get_command(dir)}`
  end

  def get_command(dir)
    "code -n #{dir}"
  end
end
