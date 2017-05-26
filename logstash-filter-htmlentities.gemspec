Gem::Specification.new do |s|
  s.name = 'logstash-filter-htmlentities'
  s.version         = '0.1.0'
  s.licenses        = ['']
  s.summary         = "This filter will decode (X)HTML entities from source and store it to the target"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["David Robakowski"]
  s.email           = 'david.robakowski@synlay.com'
  s.homepage        = "https://github.com/synlay/logstash-filter-htmlentities"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'htmlentities', '~> 4.3', '>= 4.3.4'
  s.add_development_dependency 'logstash-devutils'
end
