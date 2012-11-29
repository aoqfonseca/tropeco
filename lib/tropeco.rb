require 'tropeco/plugins/hello_world'
require 'tropeco/plugins/download'
require 'tropeco/plugins/transcriptions'


module Tropeco
  def self.start
    bot = Cinch::Bot.new do
      configure do |c|
        c.server = "irc.freenode.org"
        c.nick = "tropeco"
        c.channels = ["#opaopa"]
        c.plugins.plugins = [Tropeco::Plugins::HelloWorld, Tropeco::Plugins::DownloadFile,Tropeco::Plugins::Transcription]
      end
    end
    bot.start
 end
end
