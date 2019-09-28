class ColorizedString < String
  COLORS = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34
  }

  def initialize(string, color)
    raise NotImplementedError, "#{color} strings are not supported" if COLORS[color].nil?

    super("\e[#{COLORS[color]}m#{string}\e[0m")
  end
end