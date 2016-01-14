Gem::Specification.new do |spec|
  spec.name         = 'papertrail_rails'
  spec.version      = '0.0.4'
  spec.date         = Date.today.to_s
  spec.summary      = 'Papertrail Rails Wrapper'
  spec.description  = 'Ruby wrapper for querying the papertrail API'
  spec.authors      = ['Nick Wargnier', 'Mike Nickelson']
  spec.email        = ['mike@amitree.com']
  spec.files        = ['Gemfile', 'MIT-LICENSE', 'README.md'] + Dir['**/*.rb']
  spec.homepage     = 'http://rubygems.org/gems/papertrail_rails'
  spec.license      = 'MIT'

  spec.add_runtime_dependency 'httparty', '~> 0.12'
end
