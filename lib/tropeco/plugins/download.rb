require 'cinch'
require 'net/http'

module Tropeco
  module Plugins
    class DownloadFile

      include Cinch::Plugin

      match /get (.+)/

      def execute(m, url)
        m.reply "Comecando"
        download(url)
        m.reply "Terminei."
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
