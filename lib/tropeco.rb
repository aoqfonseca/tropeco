require 'tropeco/plugins/hello_world'
require 'tropeco/plugins/download'


module Tropeco
  def self.start
    bot = Cinch::Bot.new do
      configure do |c|
        c.server = "irc.freenode.org"
        c.nick = "tropeco"
        c.channels = ["#opaopa"]
        c.plugins.plugins = [Tropeco::Plugins::HelloWorld, Tropeco::Plugins::DownloadFile]
      end
    end
    bot.start
 end
end
