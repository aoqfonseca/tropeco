require 'cinch'
require 'tropeco/configurations'

module Tropeco
  module Plugins
    class Transcription
      include Cinch::Plugin

      listen_to :message

      def listen(m)
          puts "&lt;#{m.user.nick}&gt; #{m.message}"
      end
    end
  end
end

