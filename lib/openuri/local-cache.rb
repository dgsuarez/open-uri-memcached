require 'openuri/common'

begin
  require 'minigems'
rescue LoadError
  require 'rubygems'
end

gem "local_cache", ">= 1.2.2"
require 'local_cache'

module OpenURI
  class Cache
    class << self
      # Enable caching
      def enable!
        @cache ||= LocalCache.new
        @cache_enabled = true
      end
      
      def get(key)
        @cache.read(key) 
      end
      
      def set(key, value)
        @cache.write(key, value, :ttl => expiry)
      end
    end
  end
end
