RSpec.describe Spinup::ColorizedString do
  it 'knows which colors are implemented' do
    expect { described_class.new('a', :grey) }.to raise_error(NotImplementedError)
  end

  it 'can paint a string green' do
    str = 'this is green'

    expect(described_class.new(str, :green)).to eq("\e[32m#{str}\e[0m")
  end
end
