require 'rubygems'
require 'bundler'

$: << File.expand_path("./lib", File.dirname(__FILE__))

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake'
require 'spreadsheet/version'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = "spreadsheet"
  gem.summary     = "The Spreadsheet Library is designed to read and write Spreadsheet Documents"
  gem.description = "As of version 0.6.0, only Microsoft Excel compatible spreadsheets are supported"
  gem.authors     = [ "Masaomi Hatakeyama", "Zeno R.R. Davatz" ]
  gem.email       = "mhatakeyama@ywesee.com, zdavatz@ywesee.com"
  gem.homepage    = "http://scm.ywesee.com/?p=spreadsheet/.git;a=summary"
  gem.platform    = Gem::Platform::RUBY
  gem.version     = Spreadsheet::Version::STRING
  gem.files       = Dir.glob("{bin,lib,test}/**/*") + Dir.glob("*.txt")
  gem.executables = [ "xlsopcodes" ]
end

Jeweler::GemcutterTasks.new

require 'rake/testtask'

desc "Run tests"
Rake::TestTask.new("test") { |t|
  t.pattern = 'test/*.rb'
  t.verbose = true
  t.warning = true
}

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  version = Spreadsheet::Version::STRING
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "spreadsheet #{version}"
  rdoc.rdoc_files.include('*.txt')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'spreadsheet'

