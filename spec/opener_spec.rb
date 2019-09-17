require "opener"

RSpec.describe Opener do
  it "generates a command to open a directory in vscode" do
    dir = "/home/user/sinatra-123456abcd"
    command = "code -n /home/user/sinatra-123456abcd"

    opener = Opener.new

    expect(opener.get_command(dir)).to eq(command)
  end
end