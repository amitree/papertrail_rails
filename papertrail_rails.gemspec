Gem::Specification.new do |s|
  s.name        = "papertrail_rails"
  s.version     = '0.0.1'
  s.authors     = ["Nick Wargnier", "Mike Nickelson"]
  s.date        = '2014-06-13'
  s.summary     = %q{Papertrail Rails Wrapper}
  s.description = %Q{Ruby wrapper for querying the papertrail API}
  s.email       = ["nick@amitree.com", "mike@amitree.com"]
  s.homepage    = "https://www.amitree.com"
  s.files       = Dir["{lib}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.homepage    = 'http://rubygems.org/gems/papertrail_rails'
  s.license     = "MIT"

  s.required_ruby_version = '~> 2.0'
  s.add_runtime_dependency 'httparty', '0.13.1'
end
