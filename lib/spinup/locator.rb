class Locator
  def initialize(root_dir)
    @root_dir = root_dir
  end

  def call(type, id)
    [@root_dir, "#{type}-#{id}"].join('/')
  end
end
