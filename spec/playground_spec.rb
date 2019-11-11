require 'playground'

describe Playground do
  it 'knows where to copy files from' do
    config = { copies: true, commands: ['ls -l'] }

    pg = Playground.new :sinatra, config

    expect(pg.image_path).to eq('images/sinatra/.')
  end
end
