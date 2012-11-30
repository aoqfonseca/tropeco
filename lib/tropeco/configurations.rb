require 'yaml'
require 'singleton'

module Tropeco
  class Configurations

    include Singleton
    attr_accessor :configs


    def self.get_config()
        return self.instance
    end

    def initialize()
      @configs = YAML.load_file('config.yaml')
    end

    def method_missing(method, *args)
      return @configs[method.to_s]
    end
  end
end
