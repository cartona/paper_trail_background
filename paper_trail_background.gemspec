# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'paper_trail_background/version'

Gem::Specification.new do |spec|
  spec.name = 'paper_trail_background'
  spec.version = PaperTrailBackground::VERSION
  spec.authors = ['Kurtis Rainbolt-Greene']
  spec.email = ['kurtis@rainbolt-greene.online']
  spec.summary = 'A library for making paper_trail a background process'
  spec.description = spec.summary
  spec.homepage = 'https://github.com/cartona/paper_trail_background'
  spec.license = 'ISC'

  spec.files = Dir[File.join('lib', '**', '*'), 'LICENSE', 'README.md', 'Rakefile']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.2.0'

  spec.add_development_dependency 'bundler', '~> 2.4.8'
  spec.add_development_dependency 'byebug', '~> 11.0'
  spec.add_development_dependency 'rails', '>= 6.0.4.1'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'sidekiq', '~> 6.2.2'
  spec.add_development_dependency 'sqlite3', '~> 1.4.2'

  spec.add_runtime_dependency 'ar_after_transaction', '>= 0.7.0'
  spec.add_runtime_dependency 'paper_trail', '>= 12.0.0'
end
