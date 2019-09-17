require "locator"

RSpec.describe Locator do
  it "locates the directory" do
    root_dir = "/home/user"
    playground_type = "sinatra"
    session_key = "123456abcd"
    
    locator = Locator.new(root_dir)

    expect(locator.(playground_type, session_key)).to eq("/home/user/sinatra-123456abcd")
  end
end