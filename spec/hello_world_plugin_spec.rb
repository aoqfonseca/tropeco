require 'tropeco/plugins/hello_world'
require 'cinch'

shared_examples "check if inlcude Module" do
  it "should include cinch plugin" do
    described.included_modules.should include(Cinch::Plugin)
  end
end
