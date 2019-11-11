RSpec.describe Spinup::Playground do
  it 'knows where to copy files from' do
    config = { copies: true, commands: ['ls -l'] }

    pg = Spinup::Playground.new :sinatra, config

    expect(pg.image_path).to eq('images/sinatra/.')
  end
end
