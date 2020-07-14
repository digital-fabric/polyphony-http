require_relative './lib/polyphony/http/version'

Gem::Specification.new do |s|
  s.name        = 'polyphony-http'
  s.version     = Polyphony::HTTP::VERSION
  s.licenses    = ['MIT']
  s.summary     = 'Polyphony-http: Polyphonic HTTP for Ruby'
  s.author      = 'Sharon Rosner'
  s.email       = 'ciconia@gmail.com'
  s.files       = `git ls-files`.split
  s.homepage    = 'http://github.com/digital-fabric/polyphony-http'
  s.metadata    = {
    "source_code_uri" => "https://github.com/digital-fabric/polyphony-http"
  }
  s.rdoc_options = ["--title", "polyphony", "--main", "README.md"]
  s.extra_rdoc_files = ["README.md"]
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 2.6'

  s.executables   = ['poly']

  s.add_runtime_dependency      'polyphony',          '~>0.43.5'
  
  s.add_runtime_dependency      'http_parser.rb',     '~>0.6.0'
  s.add_runtime_dependency      'http-2',             '~>0.10.0'
  s.add_runtime_dependency      'rack',               '>=2.0.8', '<2.3.0'
  s.add_runtime_dependency      'websocket',          '~>1.2.8'
  
  s.add_development_dependency  'rake',               '~>12.3.3'
  s.add_development_dependency  'localhost',          '~>1.1.4'
  s.add_development_dependency  'minitest',           '~>5.11.3'
  s.add_development_dependency  'minitest-reporters', '~>1.4.2'
  s.add_development_dependency  'simplecov',          '~>0.17.1'
end
