require "colorized_string"

describe ColorizedString do
  it "knows which colors are implemented" do
    expect { ColorizedString.new("a", :grey) }.to raise_error(NotImplementedError)
  end

  it "can paint a string green" do
    str = "this is green"

    expect(ColorizedString.new(str, :green)).to eq("\e[32m#{str}\e[0m")
  end

end