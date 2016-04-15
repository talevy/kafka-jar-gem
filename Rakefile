require 'rubygems'
require 'rubygems/package_task'
require 'jars/installer'
require 'fileutils'

spec = Gem::Specification.load('kafka.gemspec')

Gem::PackageTask.new(spec).define


desc 'install vendored kafka jars from maven central'
task :install_jars do
  ENV['JARS_VENDOR'] = 'false'
  ENV['JARS_HOME'] = 'lib/jar-dependencies'
  Jars::Installer.vendor_jars!
end

desc 'clean it all'
task :clean do
  FileUtils.rm_rf('./pkg')
  FileUtils.rm_rf('./lib/jar-dependencies')
  FileUtils.rm_rf('./lib/kafka-jar_jars.rb')
  FileUtils.rm_rf('.mvn')
  FileUtils.rm_rf('Gemfile.lock')
end
