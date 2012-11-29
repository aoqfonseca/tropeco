require 'cinch'

module Tropeco
  module Plugins
    class HelloWorld

      include Cinch::Plugin

      match "ola"

      def execute(m)
        m.reply "Ola a todos."
      end
    end
  end
end
