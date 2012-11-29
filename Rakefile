# encoding: utf-8

require 'rubygems'
require 'bundler'
require 'rspec/core/rake_task'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "tropeco"
  gem.homepage = "http://github.com/aoqfonseca/tropeco"
  gem.license = "MIT"
  gem.summary = %Q{IRC BOT with somethings}
  gem.description = %Q{IRC BOT with somethings}
  gem.email = "aoqfonseca@gmail.com"
  gem.authors = ["Andre Fonseca"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tropeco #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
