require 'tropeco/plugins/hello_world'
require 'cinch'

describe Tropeco::Plugins::HelloWorld do
  it "should include cinch plugin" do
    described_class.included_modules.should include(Cinch::Plugin)
  end
end
