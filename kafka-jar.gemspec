VERSION = IO.read("VERSION")

Gem::Specification.new do |s|
  s.name = 'kafka-jar'
  s.version = VERSION
  s.authors = ['Tal Levy']
  s.email = ['tal@elastic.co']
  s.description = 'A Jruby Gem that loads the Kafka library jar'
  s.summary = 'Kafka jar'
  s.homepage = 'https://github.com/talevy/kafka-jar-gems'
  s.license = 'Apache 2.0'
  s.platform = 'java'
  s.require_paths = [ 'lib' ]

  s.files = Dir[ 'lib/**/*.rb', 'lib/**/*.jar' ]
  s.test_files = Dir[ 'spec/**/*.rb' ]

  s.requirements << "jar 'org.apache.kafka:kafka_2.11', '#{VERSION}'"

  s.add_development_dependency 'jar-dependencies', '~> 0.3.2'
  s.add_development_dependency 'ruby-maven', '~> 3.3'
  s.add_development_dependency 'rake', '~> 10.5'
  s.add_development_dependency 'rspec', '~> 3.1.0'
end
