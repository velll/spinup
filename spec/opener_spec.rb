RSpec.describe Spinup::Opener do
  it 'generates a command to open a directory in vscode' do
    dir = '/home/user/sinatra-123456abcd'
    valid_command = 'code -n /home/user/sinatra-123456abcd'

    opener = Spinup::Opener.new

    expect(opener.get_command(dir)).to eq(valid_command)
  end
end
