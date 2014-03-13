$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'auto_time_zone/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'auto_time_zone'
  s.version     = AutoTimeZone::VERSION
  s.authors     = ['Trevor Smith']
  s.email       = ['trevor@brevity.us']
  s.homepage    = 'https://github.com/trevorsmith'
  s.summary     = "Automatically set Time.zone."
  s.description = "Automatically set Time.zone using the value reported by the user's browser."

  s.files = Dir['{app,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4.0.3'
end