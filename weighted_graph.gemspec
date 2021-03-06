# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weighted_graph/version'

Gem::Specification.new do |spec|
  spec.name          = 'weighted_graph'
  spec.version       = WeightedGraph::VERSION
  spec.authors       = ['Mark Sayson']
  spec.email         = ['masayson@gmail.com']

  spec.summary       = 'A simple weighted graph implementation.'
  spec.description   = 'A simple weighted graph implementation that stores ' \
                       'edges in an adjacency list.'
  spec.homepage      = 'https://github.com/msayson/weighted_graph'
  spec.license       = 'MIT'

  # Specify hosts this gem may be pushed to.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org/gems/weighted_graph'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  # spec.add_development_dependency 'pry', '~> 0.10' # Local debugging utility
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
