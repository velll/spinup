require "locator"

RSpec.describe Locator do
  it "locates the directory" do
    root_dir = "/home/user"
    env_type = "sinatra"
    id = "123456abcd"
    
    expected_location = "/home/user/sinatra-123456abcd"

    locator = Locator.new(root_dir)

    expect(locator.(env_type, id)).to eq(expected_location)
  end
end