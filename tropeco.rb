$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'tropeco/plugins/hello_world'
require 'tropeco/plugins/download'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.org"
    c.nick = "tropeco"
    c.channels = ["#opaopa"]
    c.plugins.plugins = [Tropeco::Plugins::HelloWorld, Tropeco::Plugins::DownloadFile]
  end
end

bot.start
