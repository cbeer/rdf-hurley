namespace :gem do
  desc "Build the rdf-hurley-#{File.read('VERSION').chomp}.gem file"
  task :build do
    sh "gem build rdf-hurley.gemspec && mv rdf-hurley-#{File.read('VERSION').chomp}.gem pkg/"
  end

  desc "Release the rdf-hurley-#{File.read('VERSION').chomp}.gem file"
  task :release do
    sh "gem push pkg/rdf-hurley-#{File.read('VERSION').chomp}.gem"
  end
end

desc 'Default: run specs.'
task :default => :spec
task :specs => :spec

require 'rspec/core/rake_task'
desc 'Run specifications'
RSpec::Core::RakeTask.new do |spec|
  spec.rspec_opts = %w(--options spec/spec.opts) if File.exists?('spec/spec.opts')
end