require 'tropeco/plugins/hello_world'
require 'cinch'

describe HelloWorld do
  it "should include cinch plugin" do
    described_class.should be_a_kind_of(Cinch::Plugin)
  end
end
