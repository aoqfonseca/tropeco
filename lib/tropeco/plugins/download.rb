require 'cinch'
require 'net/http'

module Tropeco
  module Plugins
    class DownloadFile

      include Cinch::Plugin

      match /prend cella (.+)/

      def execute(m, url)
        m.reply "Je vais commencer"
        download(url)
        m.reply "Je vien de fini votre telecharge"
      end

      def download(url)
        debug "URL[#{url}]"
        url = URI.parse url
        Net::HTTP.start(url.host, url.port) do |http|
          resp = http.get(url.path)
          open('tempfile', "wb") do |file|
            file.write(resp.body)
          end
        end
        debug "End download"
      end

    end

  end
end
