RSpec.describe Spinup::Playground do
  it 'knows where to copy files from' do
    config = { copies: true, commands: ['ls -l'] }

    pg = Spinup::Playground.new :sinatra, config

    expect(File.identical?(pg.image_path, 'images/sinatra/.')).to be true
  end
end
