require 'cinch'

module Tropeco
  module Plugins
    class HelloWorld

      include Cinch::Plugin

      match "bonjour"

      def execute(m)
        m.reply "Bounjour"
      end
    end
  end
end
