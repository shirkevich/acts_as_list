$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'acts_as_list/version'

include_files = ["README", "Rakefile", "init.rb", "{lib,test}/**/*"].map do |glob|
  Dir[glob]
end.flatten

spec = Gem::Specification.new do |s|
  s.name              = "acts_as_list"
  s.version           = ActsAsList::VERSION
  s.author            = "Rails Core"
  s.description       = "Gem version of acts_as_list Rails plugin"
  s.summary           = "This acts_as extension provides the capabilities for sorting and reordering a number of objects in a list. The class 
that has this specified needs to have a +position+ column defined as an integer on the mapped database table."
  s.platform          = Gem::Platform::RUBY
  s.files             = include_files
  s.require_path      = "lib"
  s.test_files        = Dir["test/**/test_*.rb"]
  s.has_rdoc          = true
  s.extra_rdoc_files  = Dir["README*"]
  s.add_dependency 'activerecord'
  s.add_dependency 'activesupport'
  s.add_development_dependency 'sqlite3-ruby'
end
