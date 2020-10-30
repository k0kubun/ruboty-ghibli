require_relative 'lib/ruboty/ghibli/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruboty-ghibli'
  spec.version       = Ruboty::Ghibli::VERSION
  spec.authors       = ['Takashi Kokubun']
  spec.email         = ['takashikkbn@gmail.com']

  spec.summary       = %q{Show a ghibli picture with Ruboty}
  spec.description   = %q{Show a ghibli picture with Ruboty}
  spec.homepage      = 'https://github.com/k0kubun/ruboty-ghibli'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
