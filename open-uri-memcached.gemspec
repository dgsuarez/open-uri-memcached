Gem::Specification.new do |s|
  s.name = "openuri_memcached"
  s.version = '0.1.1'
  s.email = "ben@germanforblack.com"
  s.homepage = "http://github.com/benschwarz/open-uri-memcached"
  s.description = "A command line ruby based tool to download muxtapes from muxtape.com"
  s.authors = ["Ben Schwarz"]
  s.summary = "The same OpenURI that you know and love with the power of Memcached"
  s.files = %w(README lib/openuri_memcached.rb)
  
  # Deps
  s.add_dependency("memcache-client", ">= 1.2.1")
end