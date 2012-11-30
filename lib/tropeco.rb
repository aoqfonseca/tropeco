require 'tropeco/plugins'
require 'tropeco/configurations'

module Tropeco
  def self.start
    plugins = [Tropeco::Plugins::HelloWorld,
               Tropeco::Plugins::DownloadFile,
               Tropeco::Plugins::Transcription]

    # configs = Tropeco::Configurations.new('config.yaml')
    configs = Tropeco::Configurations.get_config

    bot = Cinch::Bot.new do
      configure do |c|
        c.server = configs.server
        c.nick = configs.nick_name
        c.channels = configs.channels
        c.plugins.plugins = plugins
      end
    end
    bot.start
 end
end
