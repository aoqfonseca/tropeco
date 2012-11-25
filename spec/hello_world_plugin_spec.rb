require 'tropeco/plugins/hello_world'
require 'cinch'

shared_examples "a plugin" do
  it "should include cinch plugin" do
    described_class.included_modules.should include(Cinch::Plugin)
  end
end

describe Tropeco::Plugins::HelloWorld do
  it_behaves_like "a plugin"
end
